class Mailman::ApplicationController < ActionController::Base
  layout 'mailman'
  before_action :authenticate_mailman!
end
