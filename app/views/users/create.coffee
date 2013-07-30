<% if @user.valid? %>
<%if params[:user][:db] == 'development'%>
  $("#erb_emails").append("<%= @user.email %><br/>")
  $("#erb_user_email").val("")
<%else%>
  $("#haml_emails").append("<%= @user.email %><br/>")
  $("#haml_user_email").val("")
<%end%>
<%else%>
  showValidations();
<%end%>

