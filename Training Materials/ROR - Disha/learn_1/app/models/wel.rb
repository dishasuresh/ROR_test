class Wel < ActiveRecord::Base
  validates :firstname, presence: {message:"This field is required"}
  validates :lastname, presence: {message:"This field is required"}
  validates :desig, presence: {message:"This field is required"}
  validates :origin, presence: {message:"This field is required"}
end
