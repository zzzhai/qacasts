class HomeController < ApplicationController
  before_filter :auth_user, :except => [:wizard]

  def index

  end

  def wizard
    if current_user.wizard
      redirect_to root_path
    end
  end

  def wizard_submit
    puts "#################################################"
  end
end
