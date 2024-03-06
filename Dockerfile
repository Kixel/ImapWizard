FROM python:3.12.2-slim-bookworm

LABEL description="A simple container running ImapWizard as a Docker container." \
    maintainer="docker@kixel.eu" \
    org.opencontainers.image.description="A simple container running ImapWizard as a Docker container." \
    org.opencontainers.image.authors="Jan Kircher, docker@kixel.eu, https://kixel.eu" \
    org.opencontainers.image.source="https://github.com/Kixel/ImapWizard" \
    org.opencontainers.image.title="imapwizard" 

EXPOSE 6969/tcp

RUN apt-get update
RUN apt-get install -y git

RUN git clone https://github.com/Kixel/ImapWizard.git
RUN cd /ImapWizard
RUN ls
RUN pip install -r ./requirements.txt

WORKDIR /ImapWizard

CMD ["python3", "./webapp.py"]