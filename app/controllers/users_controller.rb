class UsersController < ApplicationController
    
    
  #used for sign up
  
  def show 
    @conversations = current_user.mailbox.conversations
   
    @user = User.find_by(id: params[:id])
    
    if @user.nil?
       # redirect_to users_path
    end
  end
  
  def new
    @user = User.new
  end
  
  def create
   
    @user = User.new(user_params)    

    
    if @user.save
      log_in @user
      #flash[:success] = "Welcome to Metis!"
      
        if @user.email == "ericporetsky@yahoo.com"
        
        @user.update_attribute :coach, true   
        #redirect to coach conversation
        redirect_to root_url
       else
         
         #used to create a conversation in the conversation db
        @user.send_message((User.find_by email: "ericporetsky@yahoo.com"), "PWd3HXHjJzwz5cyINYBe5NWElfbl9R", @user.name ) 
         
        redirect_to @user
       end
   
    else
      render 'new'
    end
  end
  
  private 
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
end
