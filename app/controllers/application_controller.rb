class ApplicationController < ActionController::Base
  def contact_mail(contact)
 @reservation = reservation

 mail to: "自分のメールアドレス", subject: "お問い合わせの確認メール"
end

  protect_from_forgery with: :exception
  include SessionsHelper
end
