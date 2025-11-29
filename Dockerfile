# Start with a small, secure base Linux image
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the backup script into the container
COPY backup.sh .

# Ensure the script is executable
RUN chmod +x backup.sh

# This line defines the default command when the container runs
CMD ["./backup.sh"]
