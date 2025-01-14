# Use the official Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code into the container
COPY app.py .

# Expose port 80 for AppRunner
EXPOSE 8000

# Command to run the app
CMD ["python", "app.py"]
