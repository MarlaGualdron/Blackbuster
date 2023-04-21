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
- ```docker-compose run --rm web rails db:drop```
-```docker-compose run --rm web rails db:create```
-```docker-compose run --rm web rails db:migrate```
-```docker-compose run --rm web rails db:reset```
- you will find a seed file with some data that can help you, for that run
```docker-compose run --rm web rails db:seed```
### Rails console
If you want to run the console, run
- ```docker-compose run --rm web rails c```
Remember, every rails command you want to execute goes with the following script 
-  ```docker-compose run --rm web rails ```
### How to run the test suite
-  ```docker-compose run --rm web bundle exec rspec ```

### Deployment instructions
- Whenever you make changes to this project or when you want to start it for the first time, run ```docker-compose build```
- if this is the first time you initialize the project, I recommend that you run```docker-compose run --rm web rails db:create```
- Then you can run ```docker-compose up```
* ...
