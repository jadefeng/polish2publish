class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # '/an/example/path' # Or :prefix_to_your_route
    new_project_path
  end

# If the account that is registered is confirmable and not active yet, you have to override after_inactive_sign_up_path_for method.
  def after_inactive_sign_up_path_for(resource)
    # '/an/example/path' # Or :prefix_to_your_route
    root_page
  end

end