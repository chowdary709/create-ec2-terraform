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
        stage('Restart Jenkins') {
            steps {
                sh 'sudo systemctl restart jenkins'
            }
        }
    }
}
