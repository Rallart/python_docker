FROM python:3.8-slim

RUN apt-get update -qq && \
   apt-get upgrade -qq && \
   apt-get install vim -y -qq

# Set a working directory
WORKDIR /code

# Install requirements
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

# Help Python to find files
ENV PATH=$PATH:/code/shared_volume/src
ENV PYTHONPATH=$PYTHONPATH:/code/shared_volume/src


# Debugging
CMD tail -f /dev/null