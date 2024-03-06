FROM python:3.12.2-slim-bookworm

LABEL description="A simple container running ImapWizard as a Docker container."
EXPOSE 6969/tcp

RUN git clone https://github.com/Kixel/ImapWizard.git
RUN cd /ImapWizard
RUN pip install -r requirements.txt

WORKDIR /ImapWizard

CMD ["python3", "./webapp.py"]