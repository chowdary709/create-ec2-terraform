pipeline {
    agent {
        label 'workstation'
    }

    options {
        ansiColor('xterm')
    }

    parameters {
        choice(
            name: 'ACTION',
            choices: ['apply', 'destroy'],
            description: 'Choose Action'
        )
    }

    stages {
        stage('Terraform Plan') {
            steps {
                sh 'terraform init'
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh "terraform ${ACTION} -auto-approve -var-file=input.tfvars"
            }
        }
    }
}
