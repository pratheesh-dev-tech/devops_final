pipeline {
    agent any

    environment {
        GIT_REPO = "https://github.com/pratheesh-dev-tech/devops_final.git"
        DEPLOY_DIR = "/var/www/html"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: "${GIT_REPO}"
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                    # Remove old files
                    sudo rm -rf ${DEPLOY_DIR}/*
                    
                    # Clone repo to temp location
                    git clone ${GIT_REPO} /tmp/app

                    # Copy files to Nginx directory
                    sudo cp -r /tmp/app/* ${DEPLOY_DIR}/
                '''
            }
        }
    }
}
