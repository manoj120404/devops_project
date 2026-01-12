pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/manoj120404/devops_project.git'
            }
        }

        stage('Verify Code') {
            steps {
                bat '''
                echo Verifying files...
                dir
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
        always {
            echo 'Post Actions executed'
        }
    }
}
