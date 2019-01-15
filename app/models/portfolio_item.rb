class PortfolioItem < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    validate_presence_of :title, :body, :main_image, :thumb_image
end
