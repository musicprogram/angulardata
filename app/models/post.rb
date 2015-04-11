class Post < ActiveRecord::Base
	attr_accessible :title, :content, :user_id
	acts_as_votable
	belongs_to :user
	has_many :comments
end
