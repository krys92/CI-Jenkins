pipeline {
    agent any

    stages {
        stage('clone from github'){
            steps{
                dir("CI_Jenkins"){
                    echo 'clone git repo'
                    git branch: 'main', changelog: false, poll: false, url: 'https://github.com/krys92/CI-Jenkins.git'
                    bat 'dir'
                }
            }
        }
        stage('build from github') {
            steps {
                dir("CI_Jenkins"){
                    echo 'pip install -r requirements.txt'
                    bat 'pip install -r requirements.txt'
                }
            }
        }
        stage('test from github') {
            steps {
                dir("CI_Jenkins"){
                    echo 'python -m unittest'
                    bat 'python -m unittest'
                }
            }
        }
        stage('deploying from github'){
            steps{
                dir("CI_Jenkins"){
                    bat 'docker build -t app .'
                    bat 'docker run -dp 5001:5000 app'
                }
            }
        }
    }
}
