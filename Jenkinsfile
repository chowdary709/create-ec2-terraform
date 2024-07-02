pipeline {
    agent any
    stages {
        stage('Set Timezone') {
            steps {
                script {
                    sh 'JENKINS_JAVA_OPTIONS="-Duser.timezone=Asia/Kolkata"'
                }
            }
        }
        stage('Restart jenkins') {
            steps {
                // Your build steps here
                sh 'sudo systemctl restart jenkins'
            }
        }
    }
}
