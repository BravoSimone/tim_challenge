class QuotesDownloaderController < ApplicationController
  def index
    QuoteDownloaderJob.perform_async
    redirect_to quotes_url, notice: "Quote creation has been enqueued."
  end
end
