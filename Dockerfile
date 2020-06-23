FROM python:3.6

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy connector
COPY . /usr/src/app/
RUN chmod -R 755 /usr/src/app/

# Install dependencies
RUN pip install -r requirements.txt
#RUN ./setup_venv3.sh


ENTRYPOINT ["./entrypoint.sh"]
