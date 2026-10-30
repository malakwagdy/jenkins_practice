FROM alpine:latest
WORKDIR /app

# Copy the pre-compiled binary from your Jenkins workspace into the container
COPY my-app /app/my-app

# Make sure it's executable (just in case)
RUN chmod +x /app/my-app

# Run the binary
CMD ["./my-app"]