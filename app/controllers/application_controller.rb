class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  config.web_console.whitelisted_ips = '101.226.233.157'
end
