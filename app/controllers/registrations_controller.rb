class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:firstname,:middlename,:lastname,:dob,:street,:city,:state,:zipcode,:phone,:username, :email, :password, :password_confirmation)
  end


  def account_update_params
    params.require(:user).permit(:firstname,:middlename,:lastname,:dob,:street,:city,:state,:zipcode,:phone,:username, :email, :password, :password_confirmation, :current_password)
  end

  protected

  def update_resource(resource, params)
  	params.delete :current_password
    resource.update_without_password(params)
end
end