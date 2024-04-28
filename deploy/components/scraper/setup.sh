RUN apt-get update && \
    apt-get install -y python3 python3-pip build-essential libmariadb-dev-compat pkg-config && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf libnss3 libgconf-2-4 libfontconfig1