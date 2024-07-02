pipeline {
    agent any

    environment {
        JENKINS_JAVA_OPTIONS = '-Duser.timezone=Asia/Kolkata'
    }

    stages {
        stage('Set Timezone') {
            steps {
                script {
                    // Echo to confirm the timezone setting
                    sh 'echo "Setting timezone to Asia/Kolkata"'
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
