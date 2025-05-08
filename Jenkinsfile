pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/pratheesh-dev-tech/devops_final.git'
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Remove old files from web directory
                    sh 'sudo rm -rf /var/www/html/*'
                    
                    // Clone again into temporary folder (or use workspace)
                    sh 'git clone https://github.com/pratheesh-dev-tech/devops_final.git /tmp/app'
                    
                    // Move the necessary web files to the nginx directory
                    sh 'sudo mv /tmp/app/css /tmp/app/js /tmp/app/images /tmp/app/fonts /tmp/app/*.html /var/www/html/'
                    
                    // Set ownership so nginx can access
                    sh 'sudo chown -R www-data:www-data /var/www/html'
                }
            }
        }
    }
}
