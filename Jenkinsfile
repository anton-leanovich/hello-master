pipeline {
    agent {
        dockerfile { filename 'Dockerfile' }
    }
    triggers {
        pollSCM('*/10 * * * *')
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
                dir('bin') {
                    sh 'zip artifacts_${BUILD_NUMBER}.zip *'
                }
            }
        }
    }
    post {
        always {
            echo '========== Cleaning up workspace ========='
            // cleanWs()
        }
    }
}