FROM maven
# based on linux-18.04-base:latest

LABEL name="maven-3.6-jdk-11-kubectl-ibmcloud" \
    version="latest"
    
USER root

RUN apt-get -y update && apt-get -y upgrade &&\
#curl -sL https://ibm.biz/idt-installer | bash
    curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
    
RUN apt-get install -y jq
	
#RUN chown -R jenkins /root/.bluemix

USER jenkins

RUN ibmcloud plugin install container-service && \
	ibmcloud plugin install container-registry && \
	ibmcloud --version && \
	ibmcloud plugin list

RUN ibmcloud help
