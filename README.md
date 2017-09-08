# Paanet.org

Paanet organization's website.

## Requirements

Ruby version

 - 2.3.3

PostgreSQL version

 -  9.6

System dependencies

 - DevKit for Windows

## Local Setup

Install dependencies

    ./bin/bundle install

Define environment variables

    mv .env.example .env # then edit .env file manually

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

## Live Configuration

Environment variables

 - `CONTACT_EMAIL`: the destination email address of contact forms, default 'contacto@paanet.org'
 - `SMTP_USERNAME`: Google account's address for sending emails, eg. 'paanet@gmail.com'
 - `SMTP_PASSWORD`: Google account's password
 - `RECAPTCHA_SECRET_KEY`: ReCAPTCHA's value, see https://www.google.com/recaptcha/admin
 - `RECAPTCHA_SITE_KEY`: ReCAPTCHA's value.

__Email__

The _contact_ page offers to the user the capability of sending emails to a contact address owned by the organization.
It is important to mention that the email configuration is set with Gmail values.
Hence a valid Google account is required in order to enable the email service.
This account might be restricted to connect with the application for security reasons.
If emails aren't being send then try granting the following two access:

 - https://accounts.google.com/DisplayUnlockCaptcha
 - https://myaccount.google.com/lesssecureapps

References:

http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
https://stackoverflow.com/questions/18124878/netsmtpauthenticationerror-when-sending-email-from-rails-app-on-staging-envir
