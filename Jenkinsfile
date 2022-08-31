/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any
    stages {
        stage('Building Image') {
            steps {
                sh "docker-compose -f docker-compose.yml build --no-cache"
            }
        }
        stage('Deleting Old Container') {
            steps {
                sh "docker-compose -f docker-compose.yml down"
            }
        }
        stage('Launching Container') {
            steps {
                sh "docker-compose -f docker-compose.yml up -d"
            }
        }
        stage('Cleaning Containers') {
            steps {
               sh "docker image prune -f"
            }
        }
    }

}
