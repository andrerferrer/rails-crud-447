# ActiveRecord - Translator from Ruby to SQL and Vice-Versa
# Allows us to have several methods here

class Restaurant < ApplicationRecord
  validates :name, presence: true

end
