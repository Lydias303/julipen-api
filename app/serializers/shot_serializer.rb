class ShotSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :source, :project_id, :user_id
  
  has_many :comments
end