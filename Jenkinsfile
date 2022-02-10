pipeline {
    agent { docker { image 'golang:1.16-alpine' } }
    stages {        
        stage('Test') {
            steps {
                echo 'run unit test'
                sh 'go version'
            }
        }
        
        stage('Docker') {
            steps {
                echo 'Docker'
            }
        }

    }
}