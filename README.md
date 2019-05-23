# README

This README would normally document whatever steps are necessary to get the
application up and running.

# Aplication

## Gemfile

  * Add a few gems to the project

    * CarrierWave + Mini Magick – For image uploads and optimization
    * Devise – User authentication and roles
    * Better Errors – Displays better errors during development.
    * Simple Form – Simpler forms in Rails
    * Bulma Rails – My favorite CSS framework as of late based on Flexbox.
    * Impressionist – We use this to get view counts on shots
    * Gravatar Image Tag – Easy way to grab a user’s gravatar image based on their account email
    * Acts As Votable – Like and unlike shots

  * Install simple form

  > rails g simple_form:install

  * Install devise and configure as sed in the terminal

  > rails g devise:install

  * Install the views with devise

  > rails g devise:views

  * Add field name to the table users

  > rails g migration AddFieldsToUsers name:string

  * Check the migration

  > db/migrate/ add_fields_to_users

  ```Ruby
    add_column :users, :name, :string
  ```
  > rails db:migrate

## Scafolding the shot

  > rails g scaffold Shot title:string description:text user_id:integer

  > rails db:migrate

  * Modify the views

    * The root path

      > config/root

      ```Ruby
        root 'shoots#index'
      ```

    * Devise views

      * password/edit
      * password/new
      * registrations/edit
      * registrations/new
      * sessions/new

## Associate the shot to the user

  > app/model/user

  ```Ruby
    has_may :shots, dependent: :destroy
  ```

  > app/model/shot

  ```Ruby
    belong_to :user
  ```
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
