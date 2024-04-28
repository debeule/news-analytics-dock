curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

apk --no-cache add \
    make \
    g++ \
    autoconf


# Install PHP extensions
docker-php-ext-install \
    pdo_mysql

# Install redis
pecl install redis