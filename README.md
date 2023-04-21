# README

This README would normally document whatever steps are necessary to get the
application up and running.

This is a dockerized project so you will not have to install anything on your computer, 
just make sure you have docker and docker-compose on your computer.

[Docker](https://docs.docker.com/get-docker/).
[Docker-compose](https://docs.docker.com/compose/install/).

Things you may want to know about:

### Ruby version
  - ruby-2.7.8


### Database 

1. `docker-compose run --rm web rails db:drop db:create db:migrate`

2. `docker-compose run --rm web rails db:seed`
NOTE: Here you will find some data that can help you testing the endpoints. Before running twice the seed file, to avoid duplicated data is recommended do a `db:reset` first.

3. `docker-compose run --rm web rails db:reset`


### Rails console
If you want to run the console, run
- `docker-compose run --rm web rails c`

Remember, every rails command you want to execute goes with the following script 
- `docker-compose run --rm web rails `


### How to run the test suite
-  `docker-compose run --rm web bundle exec rspec `

### Deployment instructions
1. Whenever you make changes to this project or when you want to start it for the first time, run `docker-compose build`
2. if this is the first time you initialize the project, I recommend that you run `docker-compose run --rm web rails db:create`
3. Then you can run `docker-compose up`

### Postman collection, just for fun 
1. [Collection](https://www.postman.com/marlagualdron/workspace/ruby-backend/collection/13084314-94b6d2a3-3c6d-459b-8eaa-e24695b23f88?action=share&creator=13084314)

Enjoy :)
