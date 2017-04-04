# Start from the .NET Core base image, even though KoreBuild will
# bring in more recent .NET versions, in order to get prereqs
FROM microsoft/dotnet:1.1.1-sdk

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install uuid-runtime unzip sudo && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -u 1000 dockeruser && \
    adduser dockeruser sudo && \
    mkdir /home/dockeruser && chown dockeruser:dockeruser /home/dockeruser && \
    echo "dockeruser ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/dockeruser
