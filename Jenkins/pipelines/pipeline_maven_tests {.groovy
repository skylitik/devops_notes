pipeline {
    agent any
    tools {
        maven "MAVEN3"
        jdk "OracleJDK11"
    }
    stages {
        stage('Fetch Code') {
            steps {
                git branch: 'vp-rem', url: 'https://github.com/devopshydclub/vprofile-project.git'
            }
        }
        stage('Build'){
            steps{
                sh 'mvn install -DskipTests'
            }
            post {
                success {
                    echo 'Archiving artifacts now.'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
        stage('UNIT TEST') {
            steps {
                sh 'mvn test'
            }
        }
    }
}