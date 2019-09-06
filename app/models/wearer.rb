class Wearer < ApplicationRecord
 # attributes :name, :email, :password (this is already in the serializer)
 belongs_to :users
 has_many :items
end
