class UserController < ApplicationController::Base


def show 
	@User = User.find_by("id" => params["id"])
	logger.debug @user["id"].inspect
	logger.debug cookies["user_id"].inspect

	if 
		(user["id"] != cookies["user_id"].to_i)
		redirect_to "/" 
	end 
end 

def create 
	old_user = User.find_by("id" => params["id"])
	if old_user == nil 
		User.create("username" => params["username"], "password" => params["password"], "name" => params["name"])
		redirect_to "/recipe"
	else 
		@message = "This username is already taken. Please try again with another username"
		render "new"
	end 
end 


def update 
	the_user = User.find_by("id" => params["id"])
	the_user.update("username" => params["username"], "password" => params["password"], "name" => params["name"])
	redirect_to "/user/the_user#{params["id"]}"
end 







end 


