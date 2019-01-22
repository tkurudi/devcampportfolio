module DefaultPageContent
    extend ActiveSupport::Concern
    included do
    before_action :set_page_defaults
    end

def set_page_defaults
    @page_title = "Ruby Portfolio | Tarun Kurudi's Portfolio"
    @seo_keywords = "Tarun Kurudi Portfoio"
end
    
end