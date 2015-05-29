class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # binding.pry
    creatives_path if current_user.creative?
    customers_path if current_user.customer?
  end
end