resolver:
  searchpaths:
    - c.{{ grains['gcp_project_id'] }}.internal
    - google.internal
    - callfire.com
    - kernelfire.com
  nameservers:
    - 169.254.169.254
    - 8.8.8.8
    - 8.8.4.4
  options:
    - 'timeout:2'
    - 'attempts:1'
