require 'dashing'

configure do
  set :auth_token, 'fpE4GMy0XTQT749'
  set :default_dashboard, 'workshop'

  # See http://www.sinatrarb.com/intro.html > Available Template Languages on
  # how to add additional template languages.
  set :template_languages, %i[html erb]

  helpers do
    def protected!
      # Put any authentication code you want in here.
      # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

Sinatra::Application.settings.history.clear()
run Sinatra::Application
