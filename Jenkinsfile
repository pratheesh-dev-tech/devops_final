pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                sh '''
                    sudo rm -rf /var/lib/jenkins/app
                    sudo git clone https://github.com/pratheesh-dev-tech/devops_final.git /var/lib/jenkins/app
                '''
            }
        }
    }
}
