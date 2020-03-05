pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                sh 'g++ hello.cpp main.cpp -o hello | mv hello target/'
            }
        }
    }
}