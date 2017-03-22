{% if grains['dc_provider'] == 'google' %}
include:
  - google
{% else %}
include:
  - generic
{% endif %}
