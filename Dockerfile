# Stage 2: Run the binary in a clean minimal container
FROM alpine:latest
WORKDIR /app
COPY my-app /app/my-app
CMD ["./my-app"]