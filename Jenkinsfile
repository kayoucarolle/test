pipeline {
    agent {
     label ("docker-agent")
            }

  environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

   
    stages {
      stage('login') {
            steps {
                sh '''
                   echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u edennolan2021 --password-stdin
                '''
            }
        }
        stage('Terraform Init') {
            agent {
               docker { 
		   image 'edennolan2021/packages:1.0' 
	        }
              }
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
      stage('Terraform Cleanup') {
            steps {
                script {
                    sh 'terraform destroy -auto-approve'
                    }
                }
            }
    }
}
