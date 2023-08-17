pipeline {
    agent any
   
    stages {
        stage('Terraform Init') {
            agent {
               docker {
                       image 'edennolan2021/packages:1.0'
                       args '-v /var/run/docker.sock:/var/run/docker.sock'
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
