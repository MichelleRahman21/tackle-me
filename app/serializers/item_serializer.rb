class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :color, :season, :status
end
