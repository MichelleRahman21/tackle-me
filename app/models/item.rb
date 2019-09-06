class Item < ApplicationRecord
  # attributes :id, :name, :description, :color, :season, :status (this is already in the serializer)
  belongs_to :user
end
