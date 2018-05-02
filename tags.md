---
layout: page
title: Tags
exclude: true
---
<ul class="tags">
{% for tag in site.tags %}
  {% assign t = tag | first %}
  <li><a href="#{{t | downcase | replace:" ","-" }}">{{ t }}</a></li>
{% endfor %}
</ul>

---
<br>

{% for tag in site.tags %}
  {% assign t = tag | first %}
  {% assign posts = tag | last %}
  <a name="{{t | downcase | replace:" ","-" }}"></a><a href="#{{t | downcase | replace:" ","-" }}">{{ t }}</a>
  <span> ({{ tag | last | size }}):</span>
  <ul class="tags">
  {% for post in posts %}
    {% if post.tags contains t %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
    {% endif %}
  {% endfor %}
  </ul>
{% endfor %}
