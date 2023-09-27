# Use an official Python runtime as a parent image
FROM python:3.8

# Set the working directory within the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Expose the port that UVicorn will listen on
EXPOSE 8080

CMD ["uvicorn", ".app.main:app", "--host", "0.0.0.0", "--port", "8080"]