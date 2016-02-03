class ProjectSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true
  
  attributes :id, :title, :description, :user_id
  
  has_many :shots
end