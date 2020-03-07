pipeline {
    agent {
        dockerfile { filename 'Dockerfile' }
    }
    stages {
        stage('Compile') {
            steps {
                echo '========== Compiling source code ========='
                sh 'cmake .'
                sh 'make'
            }
        }
        stage('Run') {
            steps {
                echo '========== Running the artifacts =========='
                sh './bin/*'
            }
        }
        stage('Zip artifacts') {
            steps {
                echo '========== Zipping artifacts =========='
                sh 'bin/*'
            }
        }
    }
}