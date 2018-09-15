module ApplicationHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
    confirm_reservations_path
  elsif action_name == 'edit'
    confirm_reservations_path
  end
end
end
