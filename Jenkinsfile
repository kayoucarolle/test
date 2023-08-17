pipeline {
    agent none
     

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
                docker { image 'edennolan2021/packages:1.0' }
            }
            steps {
                    sh 'terraform init'
                }
            }
        
        
        stage('Terraform Apply') {
            steps {
                    sh 'terraform apply -auto-approve'
                }
            }
        
      stage('Terraform Cleanup') {
            steps {
                    sh 'terraform destroy -auto-approve'
                    }
                }
            
    }
}
