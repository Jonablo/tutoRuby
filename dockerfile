# Use Ruby image
FROM ruby:3.1

# Install webrick gem (if needed)
RUN gem install webrick

# Set working directory
WORKDIR /usr/src/app

# Copy project files
COPY servidor.rb .

# Expose port (if needed)
EXPOSE 8000

# Run Ruby server
CMD ["ruby", "servidor.rb"]
