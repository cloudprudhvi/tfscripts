pipeline {
    agent any
    stages {
        stage('Terraform Initialize') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
           input {
                message "Should we continue?"
            }
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
      
    }
}