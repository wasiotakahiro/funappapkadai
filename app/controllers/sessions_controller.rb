class SessionsController < ApplicationController
#   def new
# end
#
# def create
#   customer = Customer.find_by(email: params[:session][:email].downcase)
#   if user && customer.authenticate(params[:session][:password])
#     session[:customer_id] = customer.id
#     redirect_to customer_path(customer.id)
#   else
#     flash.now[:danger] = 'ログインに失敗しました'
#     render'new'
#   end
#
# end
#
# def destroy
#   session.delete(:customer_id)
#   flash[:notice] = 'ログアウトしました'
#   redirect_to new_session_path
# end
end
