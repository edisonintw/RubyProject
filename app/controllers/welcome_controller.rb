class WelcomeController < ApplicationController

  def index
    @list = ['book', 'fruit']
    @money = 33333
  end

end
