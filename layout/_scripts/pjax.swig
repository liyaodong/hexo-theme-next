{% if theme.pjax %}
  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/jquery-pjax/jquery.pjax.js?v={{ theme.version }}"></script>
  <script type="text/javascript" src="{{ url_for(theme.vendors) }}/nprogress/nprogress.js?v={{ theme.version }}"></script>
  <link rel="stylesheet" href="{{ url_for(theme.vendors) }}/nprogress/nprogress.css?v={{ theme.version }}">
  <script type="text/javascript" src="{{ url_for(theme.js) }}/pjax-config.js"></script>
{% endif %}
