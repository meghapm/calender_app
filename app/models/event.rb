class Event < ActiveRecord::Base
  attr_accessible :start_at, :end_at, :name
  before_save :update_end_date
  
   has_event_calendar
   
   def update_end_date 
	   self.end_at = self.start_at
   end
   
end
