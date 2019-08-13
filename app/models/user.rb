class User < ApplicationRecord


	has_many :administrations, foreign_key: 'administrator_id', class_name: "Event"
	has_many :attendances, foreign_key: 'participant_id'
	has_many :events, through: :attendances

end
