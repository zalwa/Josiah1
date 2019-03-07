node {

stage('Clone Repository')
{
checkout scm
}

stage('Show me the files'){
sh "ls -l"
}

stage('Build docker image'){

sh "docker build -t josiah:latest ."
}

stage('Docker login to hub and push the image'){
sh "docker login -u 'zalwa' -p 'Josiah_15' "
sh "docker tag josiah:latest zalwa/josiah:latest"
sh "docker push zalwa/josiah:latest"
}

stage('Apply changes to the environment') {
sh "ls -l"
}
stage('Run the docker image'){
            sh "docker container run -d zalwa/josiah:latest"
        }

}
