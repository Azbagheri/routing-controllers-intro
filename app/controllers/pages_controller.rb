class PagesController < ApplicationController

def welcome
 @header = "This is the welcome page"
end

def about
end

def contest
  @header = "This is the contest page"
end

end
