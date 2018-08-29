 #!/bin/sh

  # delete /opt/java/tomcat_8090/logs/下5天前的logs
  find /opt/java/tomcat_8090/logs/ -mtime +5 -name "*201?*" -exec rm -rf {} \;

  # delete /opt/java/tomcat_8091/logs/下5天前的logs
  find /opt/java/tomcat_8091/logs/ -mtime +5 -name "*201?*" -exec rm -rf {} \;

  # 清空 /opt/java/tomcat_8090/logs/下的catalina.out
  echo " " > /opt/java/tomcat_8090/logs/catalina.out

  # 清空 /opt/java/tomcat_8091/logs/下的catalina.out
  echo " " > /opt/java/tomcat_8091/logs/catalina.out

