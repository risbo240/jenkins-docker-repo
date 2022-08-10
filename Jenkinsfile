node{
	def app
	
		stage('Clone') {
			checkout scm
		}
		
		stage('Build image') {
			app = docker.build("xavki/adminer")
		}
		
		stage('Run image') {
			docker.image('xavki/adminer').withRun('-p 8080:8080') { c ->
			
			sh 'docker ps'
				
			sh 'curl --version'
			
			sh 'curl localhost:8080'
			
			}
		}
}
