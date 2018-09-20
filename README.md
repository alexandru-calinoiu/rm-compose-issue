# Ruby mine composer issue

This repo reproduces an issue with RubyMine 2018.2

# Steps to reproduce

- Build your images with `docker-compose build`
- Install the gems `docker-compose run api bundle install`
- Open the project in RubyMine and add a remote sdk

# Expected result

The remote sdk pointing to docker-compose should show all gems that are installed

# Actual result

THe remote sdk will just show a couple of gems