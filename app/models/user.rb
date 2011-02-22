class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :photo

  mount_uploader :photo, PhotoUploader
end