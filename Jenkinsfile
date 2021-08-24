@Library('Jenkins-shared-global-lib') _

pipeline {
    agent any
    stages {
        stage('Fetch') {
            steps {
              git branch: 'main', changelog: false, credentialsId: 'Github', poll: false, url: 'https://github.com/rayudusubrahmanyam/jenkins-lib-docker-image-scan-publish.git'
            }
        }
        stage('Build') {
            steps {
              sh 'mvn clean package'
            }
        }
    }
}