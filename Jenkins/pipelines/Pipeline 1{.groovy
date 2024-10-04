pipeline {

    agent any

    tools {

        maven "MAVEN3"

        jdk "OracleJDK11"

    }

    stages {

        stage('Fetch Code') {

            steps {

                git branch: 'vp-rem', url: 'https://github.com/devopshydclub/vprofile-repo.git'

            }

        }

        stage('Build'){

            steps{

                sh 'mvn clean install -DskipTests'

            }

            post {

                success {

                    echo 'Archiving artifacts now.'

            archiveArtifacts artifacts: '**/*.war'

                }

            }

        }

        stage('UNIT TEST') {

            steps {

                sh 'mvn test'

            }

        }

        stage('Checkstyle Analysis'){

            steps {

                sh 'mvn checkstyle:checkstyle'

            }

        }

        stage('Sonar Analysis'){

            environment {

                scannerHome = tool 'sonar4.7'

            }

            steps {

                withSonarQubeEnv('sonar') {

                    sh '''${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=vprofile \

                    -Dsonar.projectName=vprofile \

                    -Dsonar.projectVersion=1.0 \

                    -Dsonar.sources=src/ \

                    -Dsonar.java.binaries=target/test-classes/com/visualpathit/account/controllerTest/ \

                    -Dsonar.junit.reportsPath=target/surefire-reports/ \

                    -Dsonar.jacoco.reportsPath=target/jacoco.exec \

                    -Dsonar.java.checkstyle.reportPaths=target/checkstyle-result.xml'''

                }

            }

        }

    }

}
