pipeline {

    agent any
 
    environment {

        GIT_REPO = 'https://github.com/manoj120404/devops_project.git'

        NGINX_HTML = 'C:\\nginx-1.28.1\\html'

    }
 
    stages {

        stage('Pull Git Repository') {

            steps {

                echo "Pulling latest code..."

                git branch: 'main', url: "${GIT_REPO}"

            }

        }
 
        stage('Clean NGINX HTML Folder') {

            steps {

                echo "Deleting existing files..."

                bat """

                rmdir /s /q "${NGINX_HTML}"

                mkdir "${NGINX_HTML}"

                """

            }

        }
 
        stage('Copy Files to NGINX') {

            steps {

                echo "Copying new files..."

                bat """

                xcopy "%WORKSPACE%\\*" "${NGINX_HTML}\\*" /E /H /C /I /Y

                """

            }

        }
 
        stage('Reload NGINX') {

            steps {

                echo "Reloading NGINX..."

                bat """

                C:\\nginx-1.28.1\\nginx.exe -s reload

                exit /b 0

                """

            }

        }

    }
 
    post {

        always {

            echo "Pipeline finished."

        }

    }

}

 
