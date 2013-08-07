# Sounder::Server

A Server for Sounder

_Note:_ None of this is implemented yet, and it may change considerably before all is said and done.

## Usage

### Setup

Add sounder server and sound groups to your Gemfile:

```ruby
gem 'sounder-server'

gem 'sounder-soundpack-archer'
gem 'sounder-soundpack-humpday'
```

Run `bundle install`

Create a config.ru like the following:

```ruby
require 'sounder/server'

# requiring these registers their sounds
require 'sounder/soundpack/archer'
require 'sounder/soundpack/humpday'

run Sounder::Server
```

Run `rackup -p 4567` or serve like any rack application

### Routes
| HTTP Verb | Route                         | Result                        | Implemented? |
|:---------:|:------------------------------|:------------------------------|:------------:|
| GET       | /                             | Lists known sounds and some documentation | No           |
| GET       | /soundpack/\<soundpack name\> | Returns info on the soundpack | No           |
| GET       | /sound/\<sound name\>         | Returns info on the sound     | No           |
| POST      | /sound/\<sound name\>         | Plays the sound               | No           |
| POST      | /system/volume/\<0-100\>      | Sets the volume on the server | No           |

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
