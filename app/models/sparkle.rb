class Sparkle < ActiveRecord::Base
  belongs_to :user
  validates_length_of :message, within: 2..150
end
