FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the application code
COPY . .

# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the application
CMD ["python", "app.py"]

# Set environment variables for MongoDB connection
ENV MONGO_HOST=mongo
ENV MONGO_PORT=27017

# Expose port 5000 for the Flask app
EXPOSE 5000

# Run the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]