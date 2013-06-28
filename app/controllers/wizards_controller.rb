class WizardsController < ApplicationController
  before_filter :auth_user, :except => [:show]

  include Wicked::Wizard
  steps :first, :second, :third

  def show
    @user = current_user
    case step
      when 'wicked_finish'
        @user.update_attribute(:wizard, true)
    end
    render_wizard
  end


end
