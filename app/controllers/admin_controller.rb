class AdminController < ApplicationController
  def login 
	  if request.post?
		if params[:admin][:name] == "admin" && params[:admin][:password]=="password"
		         session[:admin] = "loggedin"
				 flash[:notice]="You are logged in"
				 redirect_to :controller=>:books
			else
				flash[:notice]="Invalid username/password"
				render :action=> :login 
			end
		end	
  end
def logout
	 session[:admin]=nil
	 flash[:notice] = "You are logged out"
	 redirect_to :action=>:login
 end
 end
 

