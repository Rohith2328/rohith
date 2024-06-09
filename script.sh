pipeline {
    agent any
    stages {
		stage('Git Pull'){
        steps {	
		 git branch: "main", credentialsId: "jenkins", url: "https://github.com/Rohith2328/rohith.git"
		}
	 }	
		stage('Build') {
            steps {
                script {
                    sh '''
                    sh script.sh
				    '''
				}
			}
        }
    }
 
}
