pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/pratheesh-dev-tech/devops_final.git'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Clean web server and /tmp/app before deploy
                    sh 'sudo rm -rf /var/www/html/*'
                    sh 'sudo rm -rf /tmp/app'         // <-- Add this line
                    sh 'git clone https://github.com/pratheesh-dev-tech/devops_final.git /tmp/app'
                    sh 'sudo mv /tmp/app/css /tmp/app/js /tmp/app/images /tmp/app/fonts /tmp/app/*.html /var/www/html/'
                    sh 'sudo chown -R www-data:www-data /var/www/html'
                }
            }
        }
    }
}
