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
        git branch: 'main', url: 'https://github.com/malakwagdy/devflow.git'
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