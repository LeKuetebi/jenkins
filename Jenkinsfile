node{
	def app
	stage('Clone'){
		checkout scm
	}
	stage('Build image'){
		app=docker.build('nginx:latest')
	}
	stage('Test Image'){
		docker.image('nginx:latest').withRun('-p 8081:80'){
			c->
			sh 'docker ps'
			sh 'curl localhost:8081'
		}
	}
}
