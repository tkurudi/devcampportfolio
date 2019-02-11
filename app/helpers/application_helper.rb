module ApplicationHelper
    def login_helper style = ''
        if current_user.is_a?(GuestUser)
            (link_to "Register", user_session_path, class: style) +
          " ".html_safe +
              (link_to "Login", user_session_path, class: style)
          else
            (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
          end
    end 

    def set_source_helper(layout_name)
        if session[:source]
            greeting = "Thanks for visiting me from  #{session[:source]}"
            content_tag(:P, greeting, class: "source-greeting")
            end
    end

    def copyright_generator 
        KurudiViewTool::Renderer.copyright 'Tarun Kurudi', 'All rights reserved'
 end
end

