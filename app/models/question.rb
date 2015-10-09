class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers, class_name: "answer", foreign_key: "reference_id"
	
end
