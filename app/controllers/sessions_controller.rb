#File name: session_controller.rb
#Class name: SessionsController
#Description: Control the session login of the users
class SessionsController < ApplicationController
  def create
      if !User.find_by_registry(params[:login]).nil?
        user =  User.find_by_registry(params[:login])
      elsif !User.find_by_cpf(params[:login]).nil?
        user =  User.find_by_cpf(params[:login])
      end

      if user && user.authenticate(params[:password])
        cookies[:authorization_token] = user.authorization_token
          redirect_to users_path
      else
        #Não funciona por algum motivo.
        #flash.now[:message] = 'Login ou senha inválidos'
        redirect_to root_url
      end
  end

  def destroy
    cookies.delete(:authorization_token)
    redirect_to root_url
  end
end