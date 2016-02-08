class UserSerializer < ActiveModel::Serializer  
  attributes :id, :name, :email_address
  
  has_many :projects
  has_many :comments
  has_many :shots
end
