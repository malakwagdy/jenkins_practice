#!/usr/bin/env groovy
@Library('shared_library') _

pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
         stage('checkout scm') {
            steps {
                script {
                    checkoutSCM()
                }
            }
        }
        stage('build JAR') {
            steps {
                script {
                    buildJar()
                }
            }
        }
        stage('build docker image') {
            steps {
                script {
                    buildImage()
                }
            }
        }
    }
}