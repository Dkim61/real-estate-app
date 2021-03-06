# Pull base image
FROM python:3.9

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system
RUN pip install djangorestframework-simplejwt
RUN pip install requests
RUN pip install django-cors-headers
RUN pip install python-decouple
RUN pip install Pillow
RUN pipenv install npm
# RUN pipenv npm install react-router-dom redux redux-thunk react-redux redux-devtools-extension

# RUN pipenv npm install @mui/material 


# Copy project
COPY . /code/