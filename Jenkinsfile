pipeline {
    agent {
        dockerfile { filename 'Dockerfile' }
    }
    stages {
        stage('Compile') {
            steps {
                sh 'cmake .'
                sh 'make'
                sh 'make install'
            }
        }
        stage('Run') {
            steps {
                sh './bin/*'
            }
        }
    }
}