class UsersController < ApplicationController
  def index
    @list_of_users = User.all.order({ :created_at => :desc })

    render({ :template => "user_templates/index" })
  end

  def show
    a_user = params.fetch("name")
    @the_user = User.all.where({ :username => a_user }).at(0)
    render({ :template => "user_templates/show" })
  end

end
