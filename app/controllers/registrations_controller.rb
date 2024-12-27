class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Регистрация прошла успешно!"
      redirect_to registration_success_path# Перенаправление на страницу успеха
    else
      flash.now[:alert] = "Ошибка при регистрации. Пожалуйста, проверьте данные."
      render :new # Показать форму регистрации снова в случае ошибки
    end
  end
  def success
    # Здесь можно добавить логику, если необходимо
  end
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
