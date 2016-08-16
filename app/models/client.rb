class Client < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	mount_uploader :avatar, AvatarUploader

	belongs_to :user, inverse_of: :clients
end
