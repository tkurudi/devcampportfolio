class Skill < ApplicationRecord
    validates_presence_of :title, :percentage_utilized
end
