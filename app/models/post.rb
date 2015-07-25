class Post < ActiveRecord::Base

  belongs_to :group, counter_cache: :posts_count 

  validates :content, presence: { message:  "請填寫內容！"}

  belongs_to :author, class_name: "User", foreign_key: :user_id
 
  def editable_by?(user)
    user && user == author
  end

end
