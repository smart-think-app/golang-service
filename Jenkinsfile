pipeline {
    environment {
        GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    }
    agent { docker { image 'golang:1.16-alpine' } }
    stages {        
        stage('Test') {
            steps {
                withEnv(["PATH+GO=${GOPATH}/bin"]){
                    echo 'Running test'
                    sh 'go mod download'
                    sh 'go version'
                    sh 'go test -v'
                }
            }
        }
        
        stage('Docker') {
            steps {
                echo 'Docker'
            }
        }

    }
}