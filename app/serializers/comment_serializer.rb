class CommentSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :content
end
