class ShotSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true
  
  attributes :id, :title, :description, :source, :project_id, :user_id
  
  has_many :comments
end