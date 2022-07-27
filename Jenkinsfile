node{
	def app
	
		stage('Clone') {
			checkout scm
		}
		
		stage('Build image') {
			app = docker.build("xavki/adminer")
		}
		
		stage('Run image') {
			docker.image('xavki/adminer').withRun('-p 90:80') { c ->
			
			sh 'docker ps'
			
			sh 'curl localhost'
			
			}
		}
}