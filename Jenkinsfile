pipeline {
    agent any

    stages {
        stage('clone from github'){
            steps{
                dir("CI_Jenkins"){
                    echo 'clone git repo'
                    git branch: 'main', changelog: false, poll: false, url: 'https://github.com/krys92/CI-Jenkins.git'
                    sh 'pwd'
                }
            }
        }
        stage('build from github') {
            steps {
                dir("CI_Jenkins"){
                    echo 'pip install -r requirements.txt'
                    sh 'pip install -r requirements.txt; python app.py'
                }
            }
        }
        stage('test from github') {
            steps {
                echo 'running test1'
                echo 'running test2'
            }
        }
        stage('deploying from github'){
            steps{
                echo "deployement"
            }
        }
    }
}
