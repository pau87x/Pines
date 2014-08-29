class Pin < ActiveRecord::Base
	  validates :title, presence: true
	  validates :image, presence: true

	  mount_uploader :image, PinImageUploader

	  belongs_to :user
end
