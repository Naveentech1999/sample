def TAG = "DEV";

pipeline {
    agent { label 'jenkins-node' }
    tools {nodejs "node 10.x"}
     stages {
       stage ('clone'){
         steps {
             checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Naveentech1999/sample.git']])
             echo "Cloning..."
       }
     }
        stage ('runscript') {
            steps {
               withCredentials([usernamePassword(credentialsId: 'e075484e-f677-4a5a-bb89-75ffbdbe08c5',passwordVariable: 'GIT_PASSWORD', usernameVariable: 'GIT_USER')]) {
                bat('deploy.bat $(TAG)')           
                }
            }
        }
     }
}




