install postgresql package:
  pkg.installed:
    - name: postgresql

make sure postgres is started:
  service.running:
    - name: postgresql
