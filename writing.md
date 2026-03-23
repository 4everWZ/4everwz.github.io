---
layout: page
title: Writing
permalink: /writing/
section: Notes
description: Occasional essays, notes, and reflections.
---
{% if site.posts.size > 0 %}
<ul class="writing-list">
  {% for post in site.posts %}
    <li>
      <span class="item-date">{{ post.date | date: "%B %-d, %Y" }}</span>
      <a class="writing-list-title" href="{{ post.url | relative_url }}">{{ post.title }}</a>
      {% if post.excerpt %}<p class="writing-list-excerpt">{{ post.excerpt | strip_html | strip_newlines }}</p>{% endif %}
    </li>
  {% endfor %}
</ul>
{% else %}
<p class="note">This page is intentionally quiet for now. I plan to use it for occasional essays, research notes, and short reflections.</p>
{% endif %}
