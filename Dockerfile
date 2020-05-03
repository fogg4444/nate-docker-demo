FROM ubuntu:latest

ENV cachebust 29837498237492837492834

COPY ./app /app

RUN chmod +x /app/helloworld.sh

# RUN apt-get update \
#   && apt-get install -y curl

# RUN curl -L https://sourceforge.net/projects/mingw-w64-dgn/files/latest/download --output test.7z

# RUN apt-get install p7zip-full -y

# RUN 7z e test.7z -Y -o/mingw64/

# ENV PATH="/mingw64/bin:${PATH}"
# ENV PATH="/mingw64:${PATH}"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install gcc mono-mcs && \
  rm -rf /var/lib/apt/lists/*