install apache2 package:
  pkg.installed:
    - name: apache2

make sure apache2 is running:
  service.running:
    - name: apache2
