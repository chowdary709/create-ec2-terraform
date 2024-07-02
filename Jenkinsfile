pipeline {
    agent any

    stages {
        stage('Set Timezone') {
            steps {
                script {
                    // Run Jenkins CLI command to set timezone
                    def cmd = "java -jar jenkins-cli.jar -s <Jenkins_URL> groovy = 'println(System.setProperty(\"org.apache.commons.jelly.tags.fmt.timeZone\", \"Asia/Kolkata\"))'"
                    sh cmd
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

