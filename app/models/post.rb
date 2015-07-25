class Post < ActiveRecord::Base

  belongs_to :group 

  validates :content, presence: { message:  "請填寫內容！"}

end
