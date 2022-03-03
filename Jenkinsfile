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
            input('Do you want to proceed?')
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
      
    }
}