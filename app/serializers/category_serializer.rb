class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  def editable
    scope == object.user
  end
end
