pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                sh 'cmake .'
                sh 'make'
            }
        }
        stage('Build') {
            steps {
                sh 'make install'
            }
        }
        stage('Run') {
            steps {
                sh './greet'
            }
        }
    }
}