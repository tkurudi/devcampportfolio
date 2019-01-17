class Topic < ApplicationRecord
    validates_presence_of :title

    has_many :blog
end
