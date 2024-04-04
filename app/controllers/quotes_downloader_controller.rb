class QuotesDownloaderController < ApplicationController
  def index
    QuoteDownloaderJob.perform_later
    redirect_to quotes_url, notice: "Quote creation has been enqueued."
  end
end
