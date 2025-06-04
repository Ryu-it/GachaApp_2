class Users::SessionsController < Devise::SessionsController
  def new
  end

  def create
    self.resource = warden.authenticate(auth_options)
    if resource
      flash[:success] = "ログインに成功しました"
      sign_in(resource_name, resource)
      redirect_to root_path
    else
      flash.now[:danger] = "EmailかPasswordが違います"
      render :new, status: :unprocessable_entity
    end
  end



  def destroy
    sign_out(current_user)
    redirect_to new_user_session_path, success: "ログアウトに成功しました"
  end
end
