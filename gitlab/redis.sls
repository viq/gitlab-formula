redis:
  pkg.installed:
    - name: {{ salt['pillar.get']('redis', 'redis') }}
  service.running:
    - name: {{ salt['pillar.get']('redis', 'redis') }}
    - enable: True
    - watch:
      - pkg: redis
