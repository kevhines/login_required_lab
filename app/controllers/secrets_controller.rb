class SecretsController < ApplicationController
    before_action :check_login

def show
end

private

  def check_login
    redirect_to controller: 'sessions', action: 'new' if !current_user
  end

end