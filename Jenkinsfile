pipeline {
  agent any
  
  tools {nodejs "nodejs"}
    
  stages {
        
    stage('Pre') {
      steps {
          sh 'echo "Pre stage"'
          sh 'printenv'
        }
    }      
     
    stage('Build') {
      steps {
        script {
            if (env.BRANCH_NAME == 'main') {
                echo 'I only execute on the main branch'
            } else {
                echo 'I execute elsewhere $env.BRANCH_NAME'
            }          
        }
      }
    }
    
    stage('Publish') {
      steps {
        sh 'echo "publish lambdas"'  
      }
    }
  }
}