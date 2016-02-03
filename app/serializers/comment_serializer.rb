class CommentSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true
  
  attributes :id, :body
  
  belongs_to :shot
  belongs_to :user
end
