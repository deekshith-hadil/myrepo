pipeline {
    agent any
    stages {
        stage("clear workspace") {
            step {
                deleteDir()
            }
        }
        stage("clone git") {
            step {
                checkout([$class: 'GitSCM', userRemoteConfigs: [url: 'https://github.com/deekshith-hadil/myrepo.git']])
                sh 'ls -1'
            }
        }
    }
}
