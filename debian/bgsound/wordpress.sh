if [[ ! -f wordpress.password ]]; then
    head -c12 /dev/urandom | base64 > wordpress.password
fi

# https://peteris.rocks/blog/unattended-installation-of-wordpress-on-ubuntu-server/
WP_DB_NAME="wordpress"
WP_DB_USERNAME="wordpress"
WP_DB_PASSWORD=`cat wordpress.password`
