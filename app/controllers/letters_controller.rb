class LettersController < ApplicationController
  before_action :set_letter, only: [:show, :edit, :update, :destroy]

  def index
    @letters = Letter.all
  end

  def show
  end

  def new
    @letter = Letter.new
  end

  def create
    @letter = Letter.new(letter_params)

    respond_to do |format|
      if @letter.save
        format.html { redirect_to @letter, notice: 'Letter was successfully created.' }
        format.json { render :show, status: :created, location: @letter }
      else
        format.html { render :new }
        format.json { render json: @letter.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_letter
      @letter = Letter.find(params[:id])
    end

    def letter_params
      params.require(:letter).permit(:title, :author_name, :author_city, :body)
    end
end
