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
                echo '========== Running the project =========='
                sh './bin/*'
            }
        }
        stage('Archive artifacts') {
            steps {
                echo '========== Archiving artifacts =========='
                archiveArtifacts 'bin/*'
            }
        }
    }
}