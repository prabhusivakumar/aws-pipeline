FROM prabhusiva619/aws-pipeline:V${appVersion}

ENTRYPOINT [ "/go-app" ]
