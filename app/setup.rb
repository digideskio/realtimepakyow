require 'bundler/setup'

require 'pakyow'

Pakyow::App.define do
  configure :global do
    # put global config here and they'll be available across environments
    app.name = 'Pakyow'
  end

  configure :development do
  end

  configure :prototype do
    # an environment for running the front-end prototype with no backend
    app.ignore_routes = true
  end

  configure :staging do
    # put your staging config here
  end

  configure :production do
    # put your production config here
  end

  middleware do |builder|
    builder.use Rack::Session::Cookie,
      :key => 'ws.session',
      :secret => 'ae3fe3aacd5e45ffb0865db10522ee6be33c9cb9951547ec90bc6480015141e3'
  end
end