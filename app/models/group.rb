class Group < ActiveRecord::Base

  validates :title, presence: { :message => "請填寫此欄位！"}

end
