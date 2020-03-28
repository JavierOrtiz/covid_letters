class Mailman::DashboardController < Mailman::ApplicationController

  def show
    @letters = Letter.all
  end
end
