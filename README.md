# [Paanet.org](http://www.paanet.org)

Paanet organization's website.

## Requirements

Ruby version

 - 2.6.0 or higher

PostgreSQL version

 -  9.6 or higher

System dependencies

 - DevKit for Windows

## Local Setup

Install dependencies

    bundle install # Requires sudo password
    
Update dependencies when needed

    bundle update # Requires sudo password

Define environment variables

    cp .env.example .env # Then edit the '.env' file manually.

Create DB

    bundle exec rails db:setup db:migrate

Get it running

    bundle exec rails server

## Deploy

This repo can be connected into a Heroku application for manual or automatic deployment.  
However, it takes some considerations with it.

__Create Admin User__

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
If emails are not being send then try granting the following two access:

 - https://accounts.google.com/DisplayUnlockCaptcha
 - https://myaccount.google.com/lesssecureapps

References:

http://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
https://stackoverflow.com/questions/18124878/netsmtpauthenticationerror-when-sending-email-from-rails-app-on-staging-envir
