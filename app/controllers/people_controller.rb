class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    if Person.create params[:person]
      flash[:success] = "it worked"
    else
      flash[:error] = "it failed"
    end
    redirect_to people_path
  end
end
