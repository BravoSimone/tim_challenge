require 'net/http'

class QuoteDownloaderJob < ApplicationJob
  queue_as :default

  def perform
    uri = URI('https://api.api-ninjas.com/v1/quotes')
    params = { 'X-Api-Key': ENV['API_NINJAS_KEY'] }
    uri.query = URI.encode_www_form(params)

    res = Net::HTTP.get_response(uri)
    return unless res.is_a?(Net::HTTPSuccess)

    body = JSON.parse(res.body).first
    body['text'] = body.delete('quote')

    Quote.create(body)
  end
end
