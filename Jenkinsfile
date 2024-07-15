pipeline {
    agent any


    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }

    tools {
        maven 'Maven 3.9.8'
    }

    stages {
        stage('Code Compilation') {
            steps {
                echo 'Code Compilation is In Progress!'
                sh "mvn clean compile"
                echo 'Code Compilation is Completed Successfully!'
            }
        
        }
        stage('Code Package') {
            steps {
                echo 'Creating WAR Artifact'
                sh "mvn clean package"
                echo 'WAR Artifact Creation Completed'
            }
        }
    }
}
