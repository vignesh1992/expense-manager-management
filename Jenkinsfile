pipeline {
  agent any
  
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Pre') {
      steps {
          sh 'echo "Pre stage"'
        }
    }      
     
    stage('Build') {
      steps {
        sh 'make pack-lambdas'
      }
    }
    
    
    stage('Publish') {
      steps {
        sh 'echo "publish lambdas"'  
      }
    }
  }
}