class Follow < ApplicationRecord
    has_and_belongs_to_many :cats
end
