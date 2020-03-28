class Mailman::LettersController < Mailman::ApplicationController
  before_action :set_letter, only: [:show, :update]

  def index
    @letters = Letter.all
  end

  def show
  end

  def update
    @letter.update(status: params[:status])
    redirect_to [:mailman, @letter]
  end


  private
    def set_letter
      @letter = Letter.find(params[:id])
    end
end
