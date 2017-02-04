class WordsController < ApplicationController
  before_action :set_word, only: [:show, :update, :destroy]

  # GET /items
  def index
    @words = Word.all
    headers['Access-Control-Allow-Origin'] = "*"

    render json: @words
  end

  # GET /items/1
  def show
    render json: @word
  end

  # POST /items
  def create
    @word = Word.new(word_params)
    @word.user = @current_user

    if @word.save
      render json: @word, status: :created, location: @word
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /words/1
  def update
    if @word.update(word_params)
      render json: @word
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @word.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = word.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_params
      params.require(:word).permit(:word_listed, :meaning)
    end
end





