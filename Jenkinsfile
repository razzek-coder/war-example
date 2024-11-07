pipeline {
	agent any
	tools {
		maven 'maven 3.9.9'
	}

	parameters {
		choice(name: 'DEPLOY_ENVIRONMENT', choices: ['tomcat1', 'tomcat2'], description: 'Ambiente de despliegue')
	}

	stages {
		stage('PackageDocker') {
			steps {
				bat 'mvn -B -q -P docker-build clean package'
			}
		}
		stage('Deploy') {
			steps {
				bat 'set CATALINA_HOME="C:\\Users\\virtual\\ambientes\\tomcat1\\apache-tomcat-9.0.96"; C:\\Users\\virtual\\ambientes\\tomcat1\\apache-tomcat-9.0.96\\bin\\shutdown.bat'
			}
		}
	}
}
