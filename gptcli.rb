require 'dotenv/load'
require 'httparty'

url = "https://api.openai.com/v1/completions"

headers = {
  "Authorization": "Bearer #{ENV['OPENAI_ACCESS_TOKEN']}",
  "Content-Type": "application/json"
}

prompt = ARGV[0] + " .Return only the code."
filename = ARGV[1] || "output.txt"

data = {
  model: "text-davinci-003",
  prompt: prompt,
  temperature: 0.2,
  max_tokens: 300
}

response = HTTParty.post(url, headers: headers, body: data.to_json)

json = JSON.parse(response.body)

text = json["choices"].map { |c| c["text"] }[0]

puts text

File.write(filename, text)
