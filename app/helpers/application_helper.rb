module ApplicationHelper
  require 'open-uri'

  def github_api_parser(attributes)
    json_string = open("https://api.github.com/repos/#{attributes[:username]}/#{attributes[:repo]}/commits").read
    JSON.parse(json_string)
  end
end
