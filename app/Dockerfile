# Stage 1: Build Stage
FROM ubuntu:20.04 AS build

RUN apt-get update -y && \
    apt-get install -y python3-pip && \
    apt-get install -y mysql-client 

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Stage 2: Runtime Stage
FROM python:3.9-slim

# Install runtime dependencies
RUN apt-get update -y && \
    apt-get install -y mysql-client && \
    rm -rf /var/lib/apt/lists/*

COPY --from=build /app /app
WORKDIR /app

EXPOSE 80
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]