class LettersController < ApplicationController
  before_action :set_letter, only: :show

  def index
    if params[:query].present?
      @letters = Letter.search(params[:query]).order(created_at:sort_method)
    else
      @letters = Letter.all.order(created_at: sort_method)
    end
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

    def sort_method
      return :desc if params.dig(:order).blank?

      params.fetch(:order)
    end
end
