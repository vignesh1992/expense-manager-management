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
      when {
         branch "master"
      }
      steps {
        sh 'echo "Inside Master true"'
      }
    }
    
    
    stage('Publish') {
      steps {
        sh 'echo "publish lambdas"'  
      }
    }
  }
}