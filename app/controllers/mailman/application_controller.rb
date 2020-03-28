class Mailman::ApplicationController < ActionController::Base
  before_action :authenticate_mailman!
end
