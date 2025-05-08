pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps {
                sh '''
                sudo rm -rf /home/ubuntu/app &&
                git clone https://github.com/pratheesh-dev-tech/devops_final.git /home/ubuntu/app
                '''
            }
        }
    }
}
