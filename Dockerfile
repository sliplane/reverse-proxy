# Start with the official Nginx image
FROM nginx:alpine

# Install envsubst for environment variable substitution
RUN apk add --no-cache gettext

# Copy the Nginx template file to the container
COPY nginx.conf.template /etc/nginx/nginx.conf.template

# Copy a script to handle environment variable substitution
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

# Expose port 80
EXPOSE 80

# Set the entrypoint to the custom script
ENTRYPOINT ["/docker-entrypoint.sh"]
