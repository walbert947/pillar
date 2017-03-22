{% if grains['dc_provider'] == 'google' %}
include:
  - infrastructure.datacenter.google
{% else %}
include:
  - infrastructure.datacenter.generic
{% endif %}
