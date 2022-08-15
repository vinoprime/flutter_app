# Stage 1 - Install dependencies and build the app
FROM debian:10 AS build-env

# Install flutter dependencies
RUN apt --fix-broken install -y
RUN apt-get update -y
RUN apt-get install -y git wget tar

RUN mkdir /flutter
RUN pwd
WORKDIR /flutter
RUN pwd
RUN wget -c https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.0.5-stable.tar.xz -O - | tar -xz

# RUN apt-get install -y python3
# # RUN apt-get install -y libgconf-2-4 gdb    
# # RUN apt-get install -y libglu1-mesa 
# # RUN apt-get install -y libstdc++6
# # RUN apt-get install -y fonts-droid-fallback
# # RUN apt-get install -y lib32stdc++6
# RUN apt-get clean
# RUN apt --fix-broken install

RUN pwd
WORKDIR /app
RUN pwd

# Clone the flutter repo
RUN mkdir flutter
RUN git clone https://github.com/flutter/flutter.git -b stable 
RUN mv flutter /usr/local/flutter

# Set flutter path
RUN /usr/local/flutter/bin/flutter doctor -v
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Enable flutter web
RUN flutter channel master
RUN flutter config --enable-web

# Copy files to container and build
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN flutter pub get
RUN flutter clean
RUN flutter build web

# Stage 2 - Create the run-time image
FROM nginx:1.21.1-alpine
COPY --from=build-env /app/build/web /usr/share/nginx/html