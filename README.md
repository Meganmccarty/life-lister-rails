# Life-Lister - Rails Backend

This is the Ruby on Rails backend built for the Life-Lister app. The API has endpoints for users, records, and taxons. The frontend is built with React JS. For the frontend, see the repo here: https://github.com/Meganmccarty/life-lister-react

## Get your own copy
To create your own copy of this project:
1. Fork this repo
2. Click the green 'Code' button at the top right and copy the link
3. In your terminal, navigate to the directory in which to clone the repo
4. Type `git clone <copied-link>` and hit enter
5. Type `cd life-lister-rails` and hit enter
6. Run `bundle install`
7. Run `rails db:migrate`
    - Optional: edit the `seed.rb` file and add in your own data, then run `rails db:seed`
8. Run `rails s`

The website should open up in a new browser tab at `http://localhost:3000`. The main route shouldn't have anything, but you can navigate to one of three endpoints: `/users`, `/records`, and `/taxons`

### Configure the frontend (optional)
If you want to use this API with the corresponding frontend, please see the README for the frontend repo: https://github.com/Meganmccarty/life-lister-react

## Features
* Full CRUD functionality for records
* Can create new taxons
* Can create, retrieve, and update users
* When a new record is created, a fetch request is made to the iNaturalist API to grab the taxon's image, common name, and scientific name. If the taxon is new, it is saved to the database; otherwise, the existing taxon is used instead

## Resources Used
* Built with Ruby on Rails
* Used ActiveRecord for managing the database and migration files
* [iNaturalist API](https://api.inaturalist.org/v1/docs/)
