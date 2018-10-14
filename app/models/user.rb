class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true, length: { maximum: 50 }
  mount_uploader :avatar, AvatarUploader
  mount_uploader :profileCanopy, AvatarUploader
  has_many :tweets
  has_many :follows
  has_many :favorites, dependent: :destroy
end
