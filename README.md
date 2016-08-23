# rails_blog_project

## Project Summary

This is a simple blog skeleton for when you need to integrate a blog into a website. It includes a static controller so your static site can be attached there, and then style how you see fit!

## Installation

To run this simply clone or fork it, run `bundle install`, `rake db:migrate` and then `rails s`.

You will need to signup, which you can either do through facebook omniauth, or simply signup using devise.

To use omniauth, you will need to generate a facebook key and then store it in a environment variable. dotenv is added to the gemfile for your convenience.

After signup, run `rails c`, then `User.all.first.admin = true`. This will set you up as the admin, then you can write as many posts as you would like.

## Details

The authentication is devise and also has facebook-omniauth for signup and sign in.

Authorization is included with pundit. You can change the policies to how you see fit.

There are some tests, and as always I need to write more.

Thanks for looking and if you would like to use it feel free!
