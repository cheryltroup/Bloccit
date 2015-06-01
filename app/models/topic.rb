class Topic < ActiveRecord::Base
	has_many :posts, dependent: :destroy

  scope :visible_to, -> (user) :publicly_viewable
	scope :publicly_viewable, -> { user ? all : where(public: true) }
	scope :privately_viewable, -> { user ? all : where(public: false) }
end
