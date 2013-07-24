module ApplicationHelper
  include DbSwitch
  
  def users
    User.all
  end
end
