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

    def nav_items
        [
            {
                url: root_path,
                title: 'Home'
            },
            {
                url: about_path,
                title: 'About Me'
            },
            {
                url: contact_path,
                title: 'Contact'
            },
            {
                url: blogs_path,
                title: 'Blogs'
            },
            {
                url: portfolio_items_path,
                title: 'Portfolio'
            },
        ]
    end

    def nav_helper style, tag
        nav_links = ''

        nav_items.each do |item|
            nav_links << "<#{tag}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag}>"
        end

        nav_links.html_safe
    end

    def active? path
    "active" if current_page? path
    end

end

