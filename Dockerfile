# Use an official Python runtime as a parent image
FROM python:3.11.9-bookworm

# Set working directory in the container to /app
WORKDIR /app

COPY ./requirements.txt .

# Install packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Add current directory contents into the container at /app
ADD . /app

# Start the bot
CMD ["python", "run.py"]
