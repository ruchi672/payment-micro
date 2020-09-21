node {
  
  stage('GIT CheckOut') {
    git 'https://github.com/ruchi672/todo-micro.git'
  }

  stage('Maven-Clean') {
    sh label: '', script: 'mvn clean'
  }

  stage('Maven-Compile') {
    sh label: '', script: 'mvn compile'
  }
  
  stage('Maven-Test') {
    sh label: '', script: 'mvn test'
  }


 stage('Sonar Analysis') {
   withSonarQubeEnv('sonar') {
        sh "mvn sonar:sonar"
    }
  }
  
  stage('Maven-Package') {
    sh label: '', script: 'mvn package'
  }
            
 stage('Docker-Stage-Deployment') {
   sh label: '', script: 'docker build -t ruchi672/todomicroservice:latest .'
  }
  
  stage('Pushing DockerImage to DockerHub') {
	  docker.withRegistry('', 'ruchi-dockerhub' ) {
		    sh label: '', script: 'docker push ruchi672/todomicroservice:$BUILD_NUMBER'
		  }
   
  }
        
}
