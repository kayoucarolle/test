pipeline {
    agent any
    
    
    stages {
        stage('Terraform Init') {
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
    }
    
    post {
        always {
            stage('Terraform Cleanup') {
                steps {
                    script {
                        sh 'terraform destroy -auto-approve'
                    }
                }
            }
        }
    }
}
