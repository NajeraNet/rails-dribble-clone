class RegistrationsController < Devise::RegistrationsController
  #code

  private

  def sign_up_params
    #code
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  def account_update_params
    #code
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
