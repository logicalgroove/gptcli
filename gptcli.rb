require 'httparty'

url = "https://api.openapi.com/v1/completions"

headers = {
  "Authorization": "Bearer #{ENV["OPENAI_ACCESS_TOKEN"]}",
  "Content-type": "application/json"
}

p ARGV
