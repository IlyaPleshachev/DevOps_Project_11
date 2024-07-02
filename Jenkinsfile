pipeline {
    agent any
    
    stages {
        stage('Start docker') {
            steps {
                script {
                          sh "sudo docker run --rm -d -p 9889:80 --name nginx -v ${WORKSPACE}/www:/usr/share/nginx/html:ro nginx"
                        }
                    }
                                    }
        stage('Проверяем сервер') {
        steps {
                script {
                    sh 'bash -vx serverstatus.sh'
                       }
               }
                                            }
        stage('Проверяем md5 index.html') {
            steps {
                script {
                    sh 'bash -vx md5.sh'
                       }
                   }
                                            }
         stage('Стопаем docker-контейнер') {
            steps {
                script {
                    sh 'sudo docker stop nginx'
                       }
                   }
                                            }
    }
  }
