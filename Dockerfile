# Use the official Python image as the base image
FROM python:3.9.19-slim-bookworm

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install flask

# Expose the Flask app port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]

