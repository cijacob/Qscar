class Project < ApplicationRecord
    has_and_belongs_to_many :technos
end
