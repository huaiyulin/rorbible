class Event < ActiveRecord::Base
	has_one :location
	belongs_to :category
	has_many :attendees, ->{ order("id DESC") }
	# has_many :attendees, ->{ where(["created_at > ?", Time.now - 7.day]).order("id DESC") }
	validates_presence_of :name
	
	# has_many :attendees, :dependent => :destroy
	# 可以設定當物件刪除時，也會順便刪除它的has_many物件：
	
	has_many :event_groupships
	has_many :groups, :through => :event_groupships
end
