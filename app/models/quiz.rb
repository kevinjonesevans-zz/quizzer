class Quiz < ActiveRecord::Base
  has_many :questions
  validates :title, :author, :presence => true
  validates :title, :uniqueness => true
end
