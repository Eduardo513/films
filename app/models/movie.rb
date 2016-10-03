class Movie < ActiveRecord::Base
	belongs_to :genre

	validates :name, presence: true
end
