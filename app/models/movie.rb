class Movie < ActiveRecord::Base
	belongs_to :genre
	has_many :comments, dependent: :destroy

	validates :name, presence: true
	
	def average_stars
		comments.average(:starts)
	end
end
