#!/bin/sh

git clone https://github.com/janijuvani/ml-kurkkumopo-frontend

docker build . -t janijuvani/kurkkumopo_frontend

cat password.txt | docker login -u janijuvani --password-stdin

docker push janijuvani/kurkkumopo_frontend:latest
