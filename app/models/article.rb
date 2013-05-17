class Article < ActiveRecord::Base
	belongs_to :category

	#Validations
	validates :title, :presence => true
	validates :content, :presence => true

	#Scopes
	scope :alphabetical, order('title')
	scope :active, where('active= ?', true)
end
