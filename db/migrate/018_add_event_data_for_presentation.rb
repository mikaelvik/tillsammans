class AddEventDataForPresentation < ActiveRecord::Migration
  def self.up
    e = Event.create(:name => "Vinsmaking", :description => 'Spirit inviterer til vinsmaking', :starts_at => Time.parse("2008/5/30 17:00"), :ends_at => Time.parse("2008/5/30 22:00")  )
    e.location = Location.find_by_name("BEKK")
    e.save!    
  end

  def self.down
    Event.find_by_name("Vinsmaking").destroy
  end
end
