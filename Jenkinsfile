pipeline {
  agent any
  
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Pre') {
      steps {
          echo Pre stage
        }
    }      
     
    stage('Build') {
      steps {
        sh 'make pack-lambdas'
      }
    }
    
    
    stage('Publish') {
      steps {
        echo publish lambdas  
      }
    }
  }
}