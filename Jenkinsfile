pipeline {
    agent any
    stages {
        stage('Terraform Initialize') {
            dir('us-east-1')
            steps {
                dir('us-east-1') {
                    sh 'terraform init'
                }            
               // sh 'terraform init'
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