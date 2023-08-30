def TAG = "DEV";

pipeline {
  agent any 
     stages {
       stage ('clone'){
         steps {
             checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Naveentech1999/sample.git']])
             echo "Cloning..."
       }
     }
        stage ('runscript') {
            steps {
                
                   bat 'deploy.bat'                    
                }
            }
        }
     }

