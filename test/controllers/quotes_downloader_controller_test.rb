require "test_helper"

class QuotesDownloaderControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to quotes and enqueue a job" do
    get quote_downloader_url
    assert_redirected_to '/quotes'
  end

  test "should enqueue a job" do
    assert_enqueued_jobs 1, only: QuoteDownloaderJob do
      get quote_downloader_url
    end
  end
end
