class UsersController < ApplicationController
	def User.new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:uer_id] = @user.id
			return_to '/'
		else
			return_to '/signup'
		end
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password)
	end
end
