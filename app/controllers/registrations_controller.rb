class RegistrationsController < Devise::RegistrationsController
  
    
  def new
    super
  end

  def update
    super
  end
  def after_sign_up_path_for(resource)
    root_path
  end
  # to disable auto login after user creation
  protected
  
  def sign_up(resource_name, resource)
    true
  end
  
end 