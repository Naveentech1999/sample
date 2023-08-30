def TAG = "DEV";
def STAGE="development";
def REGION = "eu-west-1";

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
                withCredentials([usernamePassword(credentialsId:  "e075484e-f677-4a5a-bb89-75ffbdbe08c5", passwordVariable:  "GIT_PASSWORD", usernameVariable:  "GIT_USER")]) {
                    bat("./deploy.bat ${STAGE} ${REGION} ${TAG} ${GIT_USER} ${GIT_PASSWORD} ${BUILD_NUMBER} ${BUILD_URL}")                    
                }
            }
        }
     }
  }
