class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body
  
  belongs_to :shot
  belongs_to :user
end
