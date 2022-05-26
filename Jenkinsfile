pipeline {
   agent any

   stages {
      stage('Pulling From GitHub') {
         steps {
            git url: 'https://github.com/mohamed180235/GoViolin.git' , branch: 'master'
         }
      }
      stage('Build The image') {
         steps {
            sh(script: "" docker build -t violin_app . "")
         }
      }
       stage('Push The image to Docker Hub')  {
          steps {
              sh 'echo $dockerhub_PSW | docker login -u $dockerhub_USR --password-stdin' 
              sh 'docker push mohamed180235d/training:latest'
          }
        }
          
    }
}

