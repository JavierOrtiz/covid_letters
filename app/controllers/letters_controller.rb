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

  def edit
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

  def update
    respond_to do |format|
      if @letter.update(letter_params)
        format.html { redirect_to @letter, notice: 'Letter was successfully updated.' }
        format.json { render :show, status: :ok, location: @letter }
      else
        format.html { render :edit }
        format.json { render json: @letter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @letter.destroy
    respond_to do |format|
      format.html { redirect_to letters_url, notice: 'Letter was successfully destroyed.' }
      format.json { head :no_content }
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
