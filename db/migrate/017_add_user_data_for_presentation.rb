class AddUserDataForPresentation < ActiveRecord::Migration
  def self.up
    User.create!(:login => "Mikael Vik", :email => "mikael.vik@bekk.no",:bekk_id => 229, :location_id => 2, :location_text => "NAV NDU", :message => "ye ye ye")
    
    User.create!(:login => "Torbjørn Vatn", :email => "torbjorn.vatn@bekk.no",:bekk_id => 220, :location_id => 2, :location_text => "BEKK", :message => "Taxi on the ways")

    User.create!(:login => "Aslak Hellesøy", :email => "aslak.hellesoy@bekk.no",:bekk_id => 247, :location_id => 1, :location_text => "BEKK", :message => "")
    
    User.create!(:login => "Klara Rohlin", :email => "klara.rohlin@bekk.no", :bekk_id => 227, :location_id => 2, :location_text => "Bekk", :message => "")
  end

  def self.down
    User.find(:all).each { |user| user.destroy }
  end
end
