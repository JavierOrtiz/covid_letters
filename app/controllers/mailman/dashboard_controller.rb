class Mailman::DashboardController < Mailman::ApplicationController

  def show
    @letters = Letter.pending
  end
end
