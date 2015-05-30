# Arpeggio

[Pivotal tracker ](https://www.pivotaltracker.com/n/projects/1321100 "Pivotal tracker ")

## Description

Arpeggio is a peer-to-peer musical instrument and equipment rental marketplace. Users looking to rent out their equipment to other musicians can do so by posting listings on the marketplace. Users looking to rent equipment from others can do so by looking through listings on the marketplace (filtered by location and search history relevance).

## Team

<a href="https://github.com/rhansby"><img src="https://avatars1.githubusercontent.com/u/1788374?v=3&s=100" width="100" height="100"></a> | <a href="https://github.com/kkajla12"><img src="https://avatars1.githubusercontent.com/u/4977332?v=3&s=100" width="100" height="100"></a> | <a href="https://github.com/m-vojvodic"><img src="https://avatars1.githubusercontent.com/u/6474701?v=3&s=100" width="100" height="100"></a> | <a href="https://github.com/PeanutJ"><img src="https://avatars1.githubusercontent.com/u/9071142?v=3&s=100" width="100" height="100"></a>
--- | --- | --- | ---
Ryan Hansberry | Karan Kajla | Marko Vojvodić | Janet (Qianwen Zhang)

## Installation

First, install Ruby on Rails: [https://gorails.com/setup/](https://gorails.com/setup/)

To ensure all necessary dependencies from the Gemfile are available to the application, run:

```
$ bundle install
```

## Usage

To begin the application locally, run:

```
$ rake db:reset
$ rails server
```

If deploying on EC2 or other cloud hosting services, be sure to have the
`aws.yml` credential file present in the `config` directory.

To load data sets on EC2, run:

```
$ rake db:data:load     # loads db/data.yml into database
```
