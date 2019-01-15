class Blog < ApplicationRecord
    enum status: { draft: 0, published: 1}

    validate_presence_of :title, :body
end
