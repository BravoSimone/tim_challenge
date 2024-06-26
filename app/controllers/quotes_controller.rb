class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy ]

  def index
    @quotes = Quote.order(id: :desc).page(page_params[:page])
  end

  def show; end

  def new
    @quote = Quote.new
  end

  def edit; end

  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      redirect_to quote_url(@quote), notice: "Quote was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @quote.update(quote_params)
      redirect_to quote_url(@quote, page_params[:page]), notice: "Quote was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quote.destroy!

    redirect_to quotes_url, notice: "Quote was successfully destroyed."
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:text, :author, :category)
  end

  def page_params
    params.permit(:page)
  end
end
