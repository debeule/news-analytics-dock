apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    build-essential \
    libmariadb-dev-compat \
    pkg-config \
    adduser
    
pip install --no-cache-dir -r /code/requirements.txt