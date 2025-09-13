# Use the official Ruby image as base
FROM ruby:3.2-alpine

# Install dependencies
RUN apk add --no-cache \
    build-base \
    linux-headers \
    git \
    nodejs \
    npm

# Set the working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install bundler
RUN gem install bundler

# Copy the rest of the application
COPY . .

# Expose port 4000 (Jekyll's default port)
EXPOSE 4000

# Default command (can be overridden)
CMD ["sh", "-c", "bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload"]
