FROM python:3.8-slim

# ensure local python is preferred over distribution python
ENV PATH /usr/local/bin:$PATH

WORKDIR /app

# Turns off buffering for easier container logging
# Prevents Python from writing pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# install system dependencies
RUN apt-get update && apt-get clean

# add application
COPY . .

# install dependencies 
RUN  pip install --disable-pip-version-check --no-cache-dir --upgrade -r requirements.txt


# change test.sh permissions
RUN chmod +x test.sh

CMD ["./test.sh"]