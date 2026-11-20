# Use python base image
FROM python:3.12-slim

# set the working directory in the container
WORKDIR /app

# copy requirements
COPY docker-application-deployment/requirements.txt .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY docker-application-deployment/app/ ./app/

# Expose flask port
EXPOSE 5000

# Start flsk application
CMD ["python", "app/app.py"]
