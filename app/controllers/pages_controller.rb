class PagesController < ApplicationController

  before_action :set_kitten_url, only: [:kitten, :kittens]

def welcome
 # @header = "This is the welcome page"
end

def about
end

def contest
  @header = "This is the contest page"
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to welcome_url
end

def kitten
  # set_kitten_url
end

def kittens
  # set_kitten_url
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

def secrets
  if params[:magic_word] == 'Azi'
    render 'secrets'
  else
    flash[:alert] = "Sorry, you're not authorized to see that page!"
    # redirect_to "/welcome"
    redirect_to kitten_url(500)
  end
end

end
