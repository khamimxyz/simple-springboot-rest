pipeline {
    agent any

    tools {
        maven 'Maven 3.6'
        jdk 'OpenJDK 17'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Run the JAR file after Maven build
                    sh 'java -jar target/simple-springboot-rest-0.0.1-SNAPSHOT.jar &'
                }
            }
        }
    }
}
