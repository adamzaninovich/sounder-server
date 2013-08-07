# Sounder::Server

A Server for Sounder

## Installation

Add this line to your application's Gemfile:

    gem 'sounder-server'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sounder-server

## Usage

### Setup

* Add Sounder SoundGroups to your Gemfile
* Write a little bit of code
* ???
* run `sounder-server`

### Routes
| Route                       | Result
|:----------------------------|:-----------------------------
| /                           | Lists known sounds
| /sound/\<sound name\>       | Returns info on the sound and its group
| /sound/\<sound name\>/play  | Plays the sound
| /system/volume/\<0-100\>    | Sets the volume on the server

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
