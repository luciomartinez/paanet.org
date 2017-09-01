# Paanet.org

Paanet organization's website.

## Requirements

Ruby version

 - 2.3.3

PostgreSQL version

 -  9.6

System dependencies

 - DevKit for Windows

## Configuration

Environment variables

 - `POSTGRES_USERNAME`: postgres username
 - `POSTGRES_PASSWORD`: postgres password
 - `CONTACT_EMAIL`: the email address where contact forms should be sent, default 'contacto@paanet.org'

## Local Setup

Install dependencies

    ./bin/bundle install

Create DB

    ./bin/rails db:setup db:migrate

Get it running

    ./bin/rails server

## Deploy

This repo can be connected into a heroku application for manual or automatic deployment.  
However some considerations can be done as following.

__Create admin user__

 1. Open the console from heroku and enter `rails console`.
 2. Create an Active Admin user from the console `AdminUser.create({ email: 'yours', password: 'yours' });`
 3. Make sure it was saved correctly by running `AdminUser.all` afterwards.
