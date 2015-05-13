# NashDev Lita

A chat bot for [NashDev](https://nashdev.slack.com) powered by [Lita](http://docs.lita.io/).

## Adding Plugins

Lita plugins are distributed as ruby gems. You can see a list of available ones [here](https://www.lita.io/plugins). To add one to this bot, add it the the Gemfile and submit a pull request!

## Running Locally

You may want to run the bot locally for testing.

### Requirements

* Ruby 2.2
* Bundler
* Redis

### Initial Steps

```
cp .env.example .env
bundle install
bundle exec lita
```
