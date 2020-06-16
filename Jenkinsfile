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
                checkout([$class: 'GitSCM', 
                branches: [[name: '*/master']], 
                doGenerateSubmoduleConfigurations: false, 
                extensions: [[$class: 'CleanCheckout']], 
                submoduleCfg: [], 
                userRemoteConfigs: [[url: 'https://github.com/deekshith-hadil/myrepo.git']]
            ])
            sh 'ls -1'
            }
        }
        stage("docker image build") {
            steps {
                sh 'docker build -t mynginx .'
            }
        }
        stage("push image to the respository") {
            steps {
                docker.withRegistry('https://index.docker.io/v1/', 'docker-login') {
                docker.build('mynginx').push()
                }
            }
        }
    }
}
