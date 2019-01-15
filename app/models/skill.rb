class Skill < ApplicationRecord
    validate_presence_of :title, :percentage_utilized
end
