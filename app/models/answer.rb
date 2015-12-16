class Answer < ActiveRecord::Base
  belongs_to :question
  validates_length_of :description, :minimum=>50
end
