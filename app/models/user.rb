class User < ActiveRecord::Base
  rolify
  has_one :profile			
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :add_profile_for_new_user

  def add_profile_for_new_user
  	self.profile = Profile.new
  end
end
