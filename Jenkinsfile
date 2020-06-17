pipeline {
    agent any

    environment {
        versionnumber = 1234
    }

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
                echo "version number ${versionnumber}"
                sh 'docker build -t deekshithhadil/firstapp:${versionnumber} .'
            }
        }
        stage("push image to the respository") {
            steps {
                echo "version number ${versionnumber}"
                sh 'docker image push deekshithhadil/firstapp:${versionnumber}'
            }
        }
    }
}

