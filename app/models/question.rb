class Question < ActiveRecord::Base
  has_many :answers 
  validates_length_of :title, :minimum=>40
  validates_length_of :description, :minimum=>150
end
