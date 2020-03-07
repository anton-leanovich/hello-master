pipeline {
    agent {
        dockerfile { filename 'Dockerfile' }
    }
    stages {
        stage('Compile') {
            steps {
                sh 'cmake .'
                sh 'make $DESTDIR=~/Desktop/hello-master/target'
            }
        }
        stage('Run') {
            steps {
                sh './bin/*'
            }
        }
    }
}