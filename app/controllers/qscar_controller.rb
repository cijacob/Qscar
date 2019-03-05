class QscarController < ApplicationController
  before_action :set_locale
  def index
    @message = Message.new
  end

  def about 
  end

  def project
  end 

end
