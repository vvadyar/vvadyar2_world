class Article < ActiveRecord::Base
	#Relationship
	belongs_to :category

	#Validations
	validates :title, :presence => true
	validates :content, :presence => true

	#Scope
	scope :alphabetical, order('title')
	scope :active, where("active = ?", true)
end
