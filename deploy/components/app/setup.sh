curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

apk --no-cache add \
    make \
    g++ \
    autoconf \
    mysql-client \
    sqlite \
    libgomp \
    pcre-dev \
    imagemagick-dev \
    libzip-dev \
    libpng-dev \
    libxml2-dev \
    busybox-suid


# Install PHP extensions
docker-php-ext-install \
    pdo_mysql \
    pcntl \
    zip \
    xml \
    gd

# Install redis
pecl install redis

addgroup -g 1000 -S app \
    && adduser -u 1000 -S app -G app \
    && chown app .