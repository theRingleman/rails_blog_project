class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  belongs_to :author, :class_name => "User"
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags
  accepts_nested_attributes_for :tags, reject_if: :all_blank
  accepts_nested_attributes_for :comments, reject_if: :reject_comments

  def tags_attributes=(tag_attributes)
    tag_attributes.values.each do |tag_attribute|
      tag = Tag.find_or_create_by(tag_attribute)
      self.tags << tag
    end
  end

  def reject_comments(comment)
    comment[:user_id].blank?
  end
end
