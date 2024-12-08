pipeline {
    agent {
        any
    }
    
    environment {
        // Ajout d'exemples pour vos variables d'environnement Azure, si nécessaire
        ARM_SUBSCRIPTION_ID = credentials('azure-subscription-id')
        
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out the repository"
                git branch: 'main', credentialsId: 'github-credentials', url: 'https://github.com/may-meriem/TP4-DevOps.git'
            }
        }

        stage('Terraform Init') {
            steps {
                echo "Initializing Terraform..."
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                echo "Running Terraform Plan..."
                sh 'terraform plan -input=false'
            }
        }

        stage('Terraform Apply') {
            steps {
                input {
                    message "Do you want to proceed with apply?"
                }
                echo "Applying Terraform changes..."
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo "Deployment successful"
            sh './notify.sh success'
        }
        failure {
            echo "Deployment failed"
            sh './notify.sh failure'
        }
    }
}
