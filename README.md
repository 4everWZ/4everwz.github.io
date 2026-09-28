# [Weizheng Wang — Academic Website](https://wz-wang.com/)

Jekyll academic homepage hosted on GitHub Pages at **wz-wang.com**.

Content follows the complete CV in `D:\Code\Latex\Awesome_CV` (`resume.tex`, `resume/`, and `resume.pdf`; Chinese version: `resume_zh.pdf`). The upstream `cv.tex` is a template, not a personal CV. Earlier publications and awards on this site are retained alongside the current CV entries.

- English CV: `assets/CV.pdf`; `Weizheng_Wang_CV.pdf` preserves the existing download URL.
- Chinese CV: `assets/CV-zh.pdf`.
- Homepage structure and content rules: [academic homepage specification](docs/specs/academic-homepage-redesign.md).
- Custom domain: `_config.yml` and `CNAME` must agree.

Complete lists use static pagination with no client-side JavaScript or extra plugin: publications (4 papers/page), experience (3 entries/page), and selected open-source projects (3/page). Edit their entries in `_data/publications.yml`, `_data/experience.yml`, and `_data/software.yml`; patents are in `_data/patents.yml` and appear after the final publication page. Shared display settings are in `_data/listings.yml`.

The root Markdown files serve page 1; numbered route files live in `pages/`. When entries require another page, add a route file following the existing pattern. The build verification below catches missing pages, omissions, duplicates, ordering errors, and broken pagination links. Open-source selection follows the six projects in the current CV; miscellaneous utility repositories are excluded.

Validate content and build using the locked Ruby dependencies:

```powershell
pwsh -File scripts/verify-site-content.ps1
```

```sh
bundle config set --local path vendor/bundle
bundle install
bundle exec jekyll build
bundle exec ruby scripts/verify-pagination.rb
bundle exec jekyll serve
```

On Windows, Ruby/Bundler can run in WSL from `/mnt/d/Code/4everwz.github.io`. GitHub Actions builds and deploys pushes to `main` using `.github/workflows/jekyll.yml`.
