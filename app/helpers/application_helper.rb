module ApplicationHelper
    def full_title(page_title = "")
    base_title = "Ruby on Rails Tutorial Sample App"
    base_title = page_title.empty? ? base_title : "#{page_title} | #{base_title}"
    end

    def is_logged_in?
        !session[:user_id].nil?
    end
end