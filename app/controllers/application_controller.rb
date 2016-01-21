class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ::ActionController::Serialization
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name, :address1, :address2, :city, :country, :postcode, :mobile, :telephone]
  end
end
