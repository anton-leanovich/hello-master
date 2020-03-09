pipeline {
    agent {
        dockerfile { filename 'Dockerfile' }
        }
    options {
        timestamps()
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
        stage('Zip') {
            steps {
                echo '========== Zipping artifacts =========='
                sh 'zip artifacts.zip -r bin'
            }
        }
    }
    post {
        always {
            echo '========== Cleaning up workspace ========='
            cleanWs()
        }
    }
}