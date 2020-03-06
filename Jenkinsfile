pipeline {
    agent {
        docker { image 'ubuntu1' }
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