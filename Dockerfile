# Change base image to Alpine Linux with Python 3.10 pre-installed
FROM python:3.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Install any required system dependencies (none needed for this simple script)

# Copy the two custom files into the container
COPY backup.sh .
COPY transform_data.py .

# Ensure the shell script is executable
RUN chmod +x backup.sh

# This line defines the default command when the container runs
CMD ["./backup.sh"]
