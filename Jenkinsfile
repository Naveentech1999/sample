pipeline {
  agent { label 'jenkins-slave' }

  stages {
    stage('Check if any jobs are running') {
      steps {
        sh 'echo "Checking if any jobs are running..."'
        sh 'def isJobRunning = isJobRunning()'
        sh 'if (!isJobRunning()) {'
        sh '  echo "No jobs are running, stopping the slave agent."'
        sh '  System.exit(0)'
        sh '}'
      }
    }
  }
}
