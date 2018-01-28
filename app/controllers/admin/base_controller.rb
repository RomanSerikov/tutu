module Admin
  class BaseController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin

    def control; end

    protected

    def check_admin
      return true if current_user.admin?
      redirect_to root_path, alert: "У вас нет прав на просмотр этой страницы"
    end
  end
end
