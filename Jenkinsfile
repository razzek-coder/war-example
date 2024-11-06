pipeline {
	agent any
	tools {
		maven 'maven 3.9.9'
	}

	parameters {
		choice(name: 'DEPLOY_ENVIRONMENT', choices: ['QA1', 'QA2'], description: 'Ambiente de despliegue')
	}

	stages {
		stage('build') {
			steps {
				sh 'mvn -B -q package'
			}
		}
		stage('deploy') {
			sh 'docker build -t ' + params.DEPLOY_ENVIRONMENT
			sh 'docker compose'}
		}
	}
}
