# Run after `bundle exec jekyll build` to check the actual static pages.
require 'yaml'
require 'cgi'

root = File.expand_path('..', __dir__)
destination = File.join(root, '_site')
read_data = ->(name) { YAML.safe_load_file(File.join(root, '_data', "#{name}.yml")) }
listings = read_data.call('listings')

listings.each do |key, listing|
  entries = read_data.call(key)
  expected_ids = entries.map { |entry| entry.fetch('id') }
  raise "Duplicate source IDs: #{key}" unless expected_ids.uniq == expected_ids
  count = (entries.size.to_f / listing.fetch('per_page')).ceil
  urls = (1..count).map { |number| number == 1 ? listing['base_url'] : "#{listing['base_url']}page/#{number}/" }
  actual_ids = []

  urls.each_with_index do |url, index|
    path = File.join(destination, url.delete_prefix('/'), 'index.html')
    raise "Missing pagination route: #{url}" unless File.file?(path)
    html = File.read(path)
    ids = html.scan(/data-entry-id="([^"]+)"/).flatten
    expected_slice = expected_ids.slice(index * listing['per_page'], listing['per_page'])
    raise "Missing, duplicated or reordered entries: #{url}" unless ids == expected_slice
    actual_ids.concat(ids)
    raise "Incorrect canonical: #{url}" unless html.include?(%{rel="canonical" href="https://wz-wang.com#{url}"})
    raise "Missing section navigation: #{url}" unless html.include?(%{href="#{listing['base_url']}" aria-current="page"})
    raise "Unrendered markup: #{url}" if html.match?(/\{\{|\{%/)
    raise "Empty title: #{url}" unless html.include?(listing.fetch('title'))

    pagers = html.scan(/<nav class="pagination".*?<\/nav>/m)
    raise "Missing top/bottom pagination: #{url}" unless pagers.size == 2
    pagers.each do |pager|
      raise "Wrong active page: #{url}" unless pager.include?(%{aria-current="page" aria-label="Page #{index + 1}"})
      links = pager.scan(/href="([^"]+)"/).flatten
      raise "Unreachable page: #{url}" unless (urls - [url] - links).empty?
      previous = pager[/<a rel="prev" href="([^"]+)"/, 1]
      following = pager[/<a rel="next" href="([^"]+)"/, 1]
      raise "Incorrect previous page: #{url}" unless previous == (index.zero? ? nil : urls[index - 1])
      raise "Incorrect next page: #{url}" unless following == urls[index + 1]
    end

    appendix_ids = html.scan(/data-appendix-id="([^"]+)"/).flatten
    expected_appendix = listing['appendix'] && index == count - 1 ? read_data.call(listing['appendix']).map { |entry| entry['id'] } : []
    raise "Incorrect appendix placement: #{url}" unless appendix_ids == expected_appendix

    html.scan(/href="([^"]+)"/).flatten.select { |link| link.start_with?('/') }.each do |link|
      relative = CGI.unescapeHTML(link).split(/[?#]/).first.delete_prefix('/')
      target = File.join(destination, relative)
      target = File.join(target, 'index.html') if File.directory?(target)
      raise "Broken internal link: #{url} -> #{link}" unless File.file?(target)
    end
  end
  raise "Lost entries: #{key}" unless actual_ids == expected_ids
  generated_urls = Dir.glob(File.join(destination, listing['base_url'].delete_prefix('/'), 'page', '*', 'index.html'))
  raise "Unexpected extra pagination pages: #{key}" unless generated_urls.size == count - 1
  puts "#{listing['title']}: #{entries.size} entries across #{count} pages, all links and boundaries passed."
end

years = read_data.call('publications').map { |entry| entry.fetch('group').to_i }
raise 'Publications must remain in descending year order' unless years == years.sort.reverse
expected_projects = %w[jetson-vlm-lab deim-jetson video-alert-system dailypaper cleanslatetab snappin]
raise 'Open-source selection differs from the current CV' unless read_data.call('software').map { |entry| entry['id'] } == expected_projects
puts 'Pagination verification passed.'
