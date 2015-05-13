# NashDev Lita

A chat bot for [NashDev](https://nashdev.slack.com) powered by [Lita](http://docs.lita.io/).

## Adding Plugins

Lita plugins are distributed as ruby gems. You can see a list of available ones [here](https://www.lita.io/plugins). To add one to this bot, 

1. Add it to the Gemfile
1. Run `bundle install` to lock the version
1. Commit both Gemfile and Gemfile.lock
1. Open a pull request

## Running Locally

You may want to run the bot locally for testing. There is a sample configuration that will let you interact with Lita via your shell instead of through slack.

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
