pipeline {
    agent any
    environment {
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
