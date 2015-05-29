class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    return creatives_path if current_user.creative?
    return customers_path if current_user.customer?
  end
end
