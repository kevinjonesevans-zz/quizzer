class Quiz < ActiveRecord::Base
  has_many :questions, :dependent => :destroy
  validates :title, :author, :presence => true
  validates :title, :uniqueness => true
end
