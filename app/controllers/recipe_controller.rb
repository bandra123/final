class RecipeController < ActionController::Base

def create 
	Recipe.create("name" => params["name_recipe"], "ingredients" => params["ing"], "procedure" => params["pro"], "time" => params["time_taken"], "picture_url" => params["url"], "ethnic" => params["type_dish"], "non_veg" => params["meat"], "gluten_free" => params["gluten"])
    
	redirect_to "/recipe"
end 


def destroy 
	food = Recipe.find_by("id" => params["id"])

	food.delete
	
	redirect_to "/recipe"
end 


def update 
	toot = Recipe.find_by("id" => params["id"])
	
	toot.update("name" => params["name_recipe"], "ingredients" => params["ing"], "procedure" => params["pro"], "time" => params["time_taken"], "picture_url" => params["url"], "ethnic" => params["type_dish"], "non_veg" => params["meat"], "gluten_free" => params["gluten"])
	
	redirect_to "/recipe"
end 
end 




