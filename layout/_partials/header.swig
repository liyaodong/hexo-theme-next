<h1 class="site-meta">
  <span class="logo-line-before"><i></i></span>
  <span class="logo windmill-logo">
    <i class="windmill-top"></i>
    <i class="windmill-dot"></i>
    <i class="windmill-base"></i>
  </span>
  <a href="{{ config.root }}" class="brand windmill-hover">
    <span class="site-title">{{ config.title }}</span>
  </a>
  <span class="logo-line-after"><i></i></span>
</h1>

<div class="site-nav-toggle">
  <button>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
  </button>
</div>

<div class="site-nav">
  {% set hasSearch = config.swiftype_key || config.tinysou_Key %}

  {% if theme.menu %}
    <ul id="menu" class="menu {{ hasSearch and 'menu-left' }}">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item menu-item-{{ itemName }}">
          <a href="{{ url_for(path) }}">
            <i class="menu-item-icon icon-{{ itemName }}"></i> <br />
            {{ __('menu.' + itemName) }}
          </a>
        </li>
      {% endfor %}
    </ul>
  {% endif %}

  {% if hasSearch %}
    <div class="site-search">
      {% include 'search.swig' %}
    </div>
  {% endif %}
</div>
