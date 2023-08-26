pipeline {
    agent any

    stages {
        stage('Build Dockerfile') {
            steps {
                sh 'rm -rf Dockerfile'
                sh """
                cat <<EOF >> Dockerfile
                FROM prabhusiva619/aws-pipeline:V${Version}
                ENTRYPOINT [ "/go-app" ]
                EOF
                """.stripIndent()
            }
        }
        stage('Deploy to Elastic Beanstalk') {
            steps {
                sh 'eb deploy'
            }
        }
    }
}
