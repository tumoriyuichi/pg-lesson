class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		user = User.find(params[:id])
		user.update(user_params)
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
	end

	private

	def user_params
		params.require(:user).permit(:name, :age, :mail, :adress, :gender, :program, :skils, :image)
	end

end
