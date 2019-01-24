module ApplicationHelper
    def login_helper
        if current_user.is_a?(User)
            link_to "Logout", destroy_user_session_path, method: :delete
          else
          (link_to "Register", user_session_path) +
          </br>.html_safe +
              (link_to "Login", user_session_path)
          end
    end 
end
