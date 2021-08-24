@Library('Jenkins-shared-global-lib') _

pipeline {
    agent any
    environment {
    registry = "rayudusubrahmanyam/myrepository"
    registryCredential = ‘DockerHub’
    }
    stages {
        stage('Fetch') {
            steps {
              git branch: 'main', changelog: false, credentialsId: 'Github', poll: false, url: 'https://github.com/rayudusubrahmanyam/jenkins-lib-docker-image-scan-publish.git'
            }
        }
        stage('Build') {
            steps {
              sh 'mvn -DskipTests clean package'
            }
        }  
        stage('Test') {
            steps {
              sh 'mvn test'
            }

        }
        stage('Building image') {
          steps{
            script {
              docker.build registry + ":$BUILD_NUMBER"
            }
          }
        }
        /*
        stage('Docker Image') {
            steps {
              sh 'docker build -t my-maven-app:release-$BUILD_NUMBER .'
            }
        }  
        stage('Docker Image Cliar') {
            steps {
              sh 'docker build -t my-maven-app:release-$BUILD_NUMBER .'
            }
        } 
        */         
    }
}
