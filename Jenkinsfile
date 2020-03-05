pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                sh 'cmake .'
                sh 'make'
            }
        }
        stage('Run') {
            steps {
                sh './bin/greet'
            }
        }
    }
}