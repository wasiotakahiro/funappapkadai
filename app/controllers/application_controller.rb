class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  #
  # def after_sign_in_path_for(resource)
  #   mypage_root_path # ログイン後に遷移するpathを設定
  # end
  #
  # def after_sign_out_path_for(resource)
  #   new_admin_session_path # ログアウト後に遷移するpathを設定
  # end

  def contact_mail(contact)
 @reservation = reservation

 mail to: "自分のメールアドレス", subject: "お問い合わせの確認メール"
end

  protect_from_forgery with: :exception
  include SessionsHelper
end
