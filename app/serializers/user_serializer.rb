class UserSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true
  
  attributes :id, :name, :email_address
  
  has_many :projects
  has_many :comments
  has_many :shots
end
