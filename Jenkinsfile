pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                sh 'g++ hello.cpp main.cpp -o helloworld'
            }
        }
    }
}