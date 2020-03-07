pipeline {
    agent {
        dockerfile { filename 'Dockerfile' }
    }
    stages {
        stage('Compile') {
            steps {
                sh 'cmake .'
                sh 'make'
            }
        }
        stage('Run') {
            steps {
                sh './bin/*'
            }
        }
    }
}