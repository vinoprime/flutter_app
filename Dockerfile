FROM ubuntu:20.04

RUN apt-get update && apt-get install -yq curl file git unzip xz-utils zip && rm -rf /var/lib/apt/lists/*

RUN useradd -m flutter
RUN mkdir /opt/flutter && chown flutter:flutter /opt/flutter
USER flutter
WORKDIR /home/flutter

ARG VERSION

RUN git clone -b ${VERSION} https://github.com/flutter/flutter.git /opt/flutter
ENV PATH $PATH:/opt/flutter/bin
RUN flutter config --no-analytics --enable-web --no-enable-android --no-enable-ios
RUN flutter precache --web
RUN flutter create --platforms web dummy && rm -rf dummy

# # Stage 1 - Install dependencies and build the app
# FROM debian:latest AS build-env

# # Install flutter dependencies
# RUN apt-get update 
# RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3
# RUN apt-get clean

# # Clone the flutter repo
# RUN git clone https://github.com/flutter/flutter.git
# RUN mv ./flutter /usr/local/flutter

# # Set flutter path
# # RUN /usr/local/flutter/bin/flutter doctor -v
# ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# # Run flutter doctor
# RUN flutter doctor -v
# # Enable flutter web
# RUN flutter channel master
# RUN flutter upgrade
# RUN flutter config --enable-web

# # Copy files to container and build
# RUN mkdir /app/
# COPY . /app/
# WORKDIR /app/
# RUN flutter pub get
# RUN flutter clean
# RUN flutter build web

# # Stage 2 - Create the run-time image
# FROM nginx:1.21.1-alpine
# COPY --from=build-env /app/build/web /usr/share/nginx/html