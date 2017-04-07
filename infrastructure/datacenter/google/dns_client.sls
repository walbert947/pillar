resolver:
  searchpaths:
    - c.{{ grains['gcp_project_id'] }}.internal
    - google.internal
    - callfire.com
    - kernelfire.com
  nameservers:
    - 127.0.0.1
    - 169.254.169.254
    - 8.8.8.8
    - 8.8.4.4
  options:
    - 'timeout:2'
    - 'attempts:1'

dnsmasq:
  dnsmasq_conf: salt://dnsmasq/files/dnsmasq.conf
  settings:
    domain-needed: true
    no-hosts: true
    cache-size: 10000
    neg-ttl: 10
    edns-packet-max: 4096
    dns-forward-max: 500
    interface:
      - lo
    no-dhcp-interface:
      - lo
    bind-interfaces: true
    log-async: 100
    server:
      - '/internal/169.254.169.254'
