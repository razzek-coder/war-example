pipeline {
	agent any
	tools {
		maven 'maven 3.9.9'
	}

	parameters {
		choice(name: 'DEPLOY_ENVIRONMENT', choices: ['qa1', 'qa2'], description: 'Ambiente de despliegue')
	}

	stages {
		stage('build') {
			steps {
				sh 'mvn -B -q -P docker-build clean package'
			}
		}
		stage('deploy') {
			steps {
				sh 'docker build -t ' + params.DEPLOY_ENVIRONMENT + ' .'
				sh 'cd ' + env.ENVS_DIR + ' && docker compose down ' + params.DEPLOY_ENVIRONMENT + ' && docker compose up -d ' + params.DEPLOY_ENVIRONMENT
			}
		}
	}
}
