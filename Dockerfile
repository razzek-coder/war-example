FROM tomcat:11-jdk21

COPY target/ROOT.war $CATALINA_HOME/webapps/
