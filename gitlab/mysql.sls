include:
  - mysql

gitlab-db:
  mysql_user.present:
    - name: {{ salt['pillar.get']('gitlab:db_user') }}
    - password: {{ salt['pillar.get']('gitlab:db_pass') }}
    - require:
      - pkg: mysql-server
      - service: mysql-server
  mysql_database.present:
    - name: {{ salt['pillar.get']('gitlab:db_name') }}
    - owner: {{ salt['pillar.get']('gitlab:db_user') }}
    - require:
      - pkg: mysql-server
      - service: mysql-server
      - mysql_user: gitlab-db
