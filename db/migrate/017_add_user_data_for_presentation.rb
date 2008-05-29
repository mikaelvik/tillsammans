class AddUserDataForPresentation < ActiveRecord::Migration
  def self.up
    User.create!(:login => "Mikael Vik", :email => "mikael.vik@bekk.no",:bekk_id => 229, :location_id => 2, :location_text => "NAV NDU", :message => "ye ye ye")
    
    User.create!(:login => "TorbjÃ¸rn Vatn", :email => "torbjorn.vatn@bekk.no",:bekk_id => 220, :location_id => 2, :location_text => "BEKK", :message => "Taxi on the ways")

    User.create!(:login => "Aslak HellesÃ¸y", :email => "aslak.hellesoy@bekk.no",:bekk_id => 247, :location_id => 1, :location_text => "BEKK", :message => "")
  end

  def self.down
    User.find(:all).each { |user| user.destroy }
  end
end
