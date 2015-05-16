class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :surname, :email, :password, :password_confirmation, :company_id, :promo)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :surname, :email, :password, :password_confirmation, :current_password, :company_id, :promo)
  end
end
