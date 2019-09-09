class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :color, :season, :status
  def editable
    scope == object.user
  end
end
