FROM golang:1.22-bullseye
RUN apt-get update && apt-get install -y git make

#RUN apt install golang-1.20-go -y

RUN mkdir external-dns
WORKDIR /external-dns
#RUN git clone https://github.com/kubernetes-sigs/external-dns.git && cd external-dns

RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN apt-get install dos2unix -y
#COPY . /external-dns
#RUN dos2unix /external-dns/scripts/install-ko.sh


#This is what we use
#docker login 
#make build
#make build.push IMAGE=leonardoquatrocchi/external-dns
#go test -race -coverprofile=profile.cov ./provider/aws -v
#fmt.Println("What is happening")


#This is for multiarch
#build.push-amd64
#make build.push/multiarch IMAGE=leonardoquatrocchi/external-dns
CMD ["sh", "-c", "while true; do sleep 3600; done"]
