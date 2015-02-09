class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :sparkles
  accepts_nested_attributes_for :sparkles

  validates_presence_of :first_name, :last_name, :profile_name, :location, :photo_url
  validates_uniqueness_of :first_name, scope: :last_name, message: 'has already been taken.'
  validates_uniqueness_of :profile_name, message: 'has already been taken.'
end
