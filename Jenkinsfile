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
                git 'https://github.com/deekshith-hadil/myrepo.git'
                sh 'ls -l'
            }
        }
        stage("docker image build") {
            steps {
                sh 'docker build -t deekshithhadil/firstapp:$(date +%Y%m%d-%H%M%S) .'
            }
        }
        stage("push image to the respository") {
            steps {
                sh 'docker image push deekshithhadil/firstapp'
            }
        }
    }
}

