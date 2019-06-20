class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, only: %i(edit update)

  def show
    super
  end
  
  def update_resource resource, params
    resource.update_without_password(params)
  end
end
