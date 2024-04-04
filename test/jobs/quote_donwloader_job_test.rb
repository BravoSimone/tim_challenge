require "test_helper"

class QuoteDownloaderJobTest < ActiveJob::TestCase
  setup do
    ENV.update 'API_NINJAS_KEY' => 'test'
  end

  test "creates the quote" do
    stub_request(:get, "https://api.api-ninjas.com/v1/quotes").with(query: { 'X-Api-Key': 'test' })
                                                              .to_return( body: [{ quote: 'test', author: 'me', category: 'movies' }].to_json)
    assert_difference("Quote.count", 1) do
      QuoteDownloaderJob.perform_now
    end

    assert_equal(Quote.last.text, 'test')
    assert_equal(Quote.last.author, 'me')
    assert_equal(Quote.last.category, 'movies')
  end

  test "doesn't create the quote if the api call fails" do
    stub_request(:get, "https://api.api-ninjas.com/v1/quotes").with(query: { 'X-Api-Key': 'test' })
                                                              .to_return(status: [500, "Internal Server Error"])
    assert_difference("Quote.count", 0) do
      QuoteDownloaderJob.perform_now
    end
  end
end
