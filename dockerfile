# Use Ruby image
FROM ruby:3.1

# Set working directory
WORKDIR /app

# Install webrick gem (if needed)
RUN gem install webrick

# Copy project files
COPY . .

# Expose port (if needed)
EXPOSE 8000

# Run Ruby server
CMD ["ruby", "servidor.rb"]
