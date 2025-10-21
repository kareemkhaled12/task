# --- Stage 1: Build Stage ---
# Use the official Go image to build the app
FROM golang:1.25-alpine AS builder
# Set the working directory inside the container
WORKDIR /app

# Copy the module files first to leverage caching
COPY go.mod ./
RUN go mod download

# Copy the rest of the source code
COPY . .

# Build the app (CGO_ENABLED=0 for a static binary)
RUN CGO_ENABLED=0 GOOS=linux go build -o /main .

# --- Stage 2: Run Stage ---
# Use a very small Alpine image for running
FROM alpine:latest  

WORKDIR /root/

# Copy the built binary from the builder stage
COPY --from=builder /main .

# Expose port 8080 which the app runs on
EXPOSE 8080

# Default command to run the app when the container starts
CMD ["./main"]