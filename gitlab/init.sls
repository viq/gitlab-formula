include:
  {% if grains['os_family'] == 'RedHat' %}
  - gitlab.repos
  {% endif %}
  - gitlab.packages
  - gitlab.redis
  {% if salt['pillar.get']('gitlab:db_local', true) %}
  {% if salt['pillar.get']('gitlab:db_engine') == 'postgresql' %}
  - gitlab.postgresql
  {% elif salt['pillar.get']('gitlab:db_engine') == 'mysql2' %}
  - gitlab.mysql
  {% endif%}
  {% endif%}
  - gitlab.user
  - gitlab.ruby
  - gitlab.gitlab-shell
  - gitlab.gitlab
  - gitlab.nginx
