pipeline {
  agent any 
     stages {
       stage ('clone'){
         steps {
             checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Naveentech1999/sample.git']])
             echo "Pushing changes..."
             sh "git push origin main" 
       }
     }
  }
}
