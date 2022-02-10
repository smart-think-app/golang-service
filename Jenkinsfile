pipeline {
    environment {
        GOPATH = "${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"
    }
    agent { dockerfile true }
    stages {        
        stage('Test') {
            steps {
                echo 'Test'
            }
        }
        
        stage('Docker') {
            steps {
                echo 'Docker'
            }
        }

    }
}