class Post < ActiveRecord::Base
  belongs_to  :user
  has_many  :comments
  validates :category, :inclusion => { :in => ["예방접종","중성화","미용","일반진료"], :message => "예방접종, 중성화, 미용, 일반진료 중 하나를 선택하셔야 합니다." }
  validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
	mount_uploader :image, ImageUploader
end
