FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair@sha256:2437b7ef91bef617865576c992fbcef4eb60a0aa277114da398344764f558078
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
COPY nomad.yaml nomad.yaml
