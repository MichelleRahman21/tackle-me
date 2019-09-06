class WearerSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password
end
