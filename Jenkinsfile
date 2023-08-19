pipeline {
    agent any
   
    stages {
        stage('Terraform Init') {
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
