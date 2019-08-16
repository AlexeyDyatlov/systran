# Systran

API Wrapper for SYSTRAN translation services with Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'systran'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install systran

## Getting a SYSTRAN API KEY
To make api requests in Systran you must include access key in request params.

Instruction for getting access key is [here](https://platform.systran.net/index)

## Configuration
The default behaviour is to configure using the application environment:

In .env, add:

```
SYSTRAN_ACCESS_KEY="API_KEY"
```

## Translate services
# Translation
Request for translating text is #translate.

```
Client.translate('input': "Hello", 'source': "en", 'target': "ru")
```
# Options
```
key - access key, optional if key exists in config
input - text for translation, required
source - source language, ISO 639-1 format (like "en"), optional
target - target language, ISO 639-1 format (like "ru"), required
```
## Contributing
Bug reports and pull requests are welcome on GitHub at [https://github.com/AlexeyDyatlov/systran].

## License
The package is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

