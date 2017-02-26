FROM library/node

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN npm install -g bower grunt-cli && \
    echo '{ "allow_root": true }' > /root/.bowerrc

RUN apt-get install -y ruby
RUN gem install sass -v 3.3.14

# Define working directory.
WORKDIR /data

ENV DEBIAN_FRONTEND newt

# Define default command.
CMD ["bash"]
