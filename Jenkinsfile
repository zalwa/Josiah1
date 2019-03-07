node {

stage('Clone Repository')
{
checkout scm
}

stage('Show me the files'){
sh "ls -l"
}

stage('Build docker image'){

sh "docker build -t josiahk:latest ."
}

stage('Docker login to hub and push the image'){
sh "docker login -u 'zalwa' -p 'Josiah_15' "
sh "docker tag josiahk:latest zalwa/josiahk:latest"
sh "docker push zalwa/josiahk:latest"
}

stage('Apply changes to the environment') {
sh "ls -l"
}


}