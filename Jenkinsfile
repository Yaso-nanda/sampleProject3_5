pipeline {
     agent any
     
     stages {
         stage('Deploy'){
             steps {
                sh 'whoami'
                sh 'docker run --name mysqldbq -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=employee_management_system -e MYSQL_PASSWORD=root -d mysql:8 || true'
                sh 'docker build -t springbootq .'
                sh 'docker rm -f springboota || true'
                sh 'docker run -d -p 8050:8080 --name springboota --link mysqldbq:mysql springbootq'
             }
         }
     }
}
