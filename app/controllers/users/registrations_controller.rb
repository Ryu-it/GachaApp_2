class Users::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if resource.persisted?
      flash[:success] = "登録に成功しました"
      else
      flash.now[:danger] = "登録に失敗しました。入力内容を確認してください"
      end
    end
  end

  def new
    super
  end
end
