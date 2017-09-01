# Paanet.org

Paanet organization's website.

## Requirements

Ruby version

 - 2.3.3

System dependencies

 - DevKit for Windows

## Configuration

Database creation

 - PostgreSQL 9.6

## Local Setup

Install dependencies

    ./bin/bundle install
    
Get it running

    ./bin/rails server

## Deploy

This repo can be connected into a heroku application for manual or automatic deployment.  
However some considerations can be done as following.

__Generate default admin__

 1. Open the console from heroku and enter `rails console`.
 2. Create an Active Admin user from the console: `AdminUser.create({ email: 'yours', password: 'yours' });`
