pipeline {
    agent any
    stages {
        stage("clear workspace") {
            steps {
                deleteDir()
            }
        }
        stage("clone git") {
            steps {
                checkout([$class: 'GitSCM', userRemoteConfigs: [url: 'https://github.com/deekshith-hadil/myrepo.git']])
                sh 'ls -1'
            }
        }
    }
}
