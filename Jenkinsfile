pipeline {
    agent {
        label 'amzlinux'
    }
    stages {
        stage('Terraform Initialize') {
            steps {
                dir('us-east-1') {
                    sh 'terraform init'
                }            
               // sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                dir('us-east-1') {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
           input {
                message "Should we continue?"
            }
            steps {
                 dir('us-east-1') {
                    sh 'terraform apply --auto-approve'
                }
            }
        }
      
    }
}
