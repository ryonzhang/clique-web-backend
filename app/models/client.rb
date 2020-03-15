class Client < ApplicationRecord
  has_many :client_categories
  has_many :categories ,through: :client_categories
end
