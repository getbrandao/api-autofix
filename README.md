# README #

This README would normally document whatever steps are necessary to get your application up and running.

### What is this repository for? ###

* Quick summary

AutoFixSG is a complete management system for workshops divided in between various modules, in which the users will know everything about the repair, 
fix and painting the all vehicles that came in. The manager's workshop always will know how many cars, costs and issues per vehicles they had through
reports. Where they will can generate statistics per vehicle or general way. AutoFixSG has the module  accounting management support also, than same 
way will can generate reports and do management daily as such bill payment, management of bank bills, etc.

* Version

`In the moment the current version is v0.0.1-alpha`

### How do I get set up? ###

* Summary of set up

All install and configuration are very simple. You will need install rails ~> 5.0! 

* Configuration

```
install ruby version  -> 2.3.1p112

install rails version -> 5
 gem install rails

install bundle
 gem install bundler

install MySQL 5.7
```

* Dependencies

All gems are listed in the Gemfile file, just execute the command:
`bundle install`

* Database configuration

```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: shauto1406
  password: sp33df1xv1
  socket: /var/run/mysqld/mysqld.sock

development:
  <<: *default
  database: autofix_development

test:
  <<: *default
  database: autofix_test`
```

* How to run tests

The methodology TDD is used in all features of the application. RSpec is framework used for this.

* Deployment instructions

Done all configuration over task, just create a new branch with all changes in the repository and 
apply a PR.

* Other guidelines

You may look Wiki's project to solve some questions, if exist.

### Who do I talk to? ###

* Repo owner or admin

```
Contact us through:

GMAIL: gustavobra