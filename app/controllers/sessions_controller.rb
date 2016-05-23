class SessionsController < ApplicationController
  
  #Create is used for logging in and starting a session 
  
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    @conversations = user.mailbox.conversations
    
    
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)

      if user.coach == true
      redirect_to conversation_path(@conversations[0])
      #change to chat interface
      else
      redirect_to user
      end
        
      
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
  

end
