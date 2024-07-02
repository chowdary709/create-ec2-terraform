pipeline {
    agent {
        label 'local'
    }
    stages {
        stage('Set Timezone') {
            steps {
                script {
                    sh 'JENKINS_JAVA_OPTIONS="-Duser.timezone=Asia/Kolkata"'
                }
            }
        }
        stage('Build') {
            steps {
                // Your build steps here
                sh 'echo "Building..."'
            }
        }
        // Add more stages as needed
    }
}
