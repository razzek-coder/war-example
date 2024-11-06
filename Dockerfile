FROM tomcat:11-jdk11

COPY target/ROOT.war $CATALINA_HOME/webapps/
