class AddAttendanceDataForPresentation < ActiveRecord::Migration
  def self.up
    Attendance.create!(:user => User.find_by_login("TorbjÃ¸rn Vatn"), :event => Event.find_by_name("Fagdag"))

    Attendance.create!(:user => User.find_by_login("TorbjÃ¸rn Vatn"), :event => Event.find_by_name("Vinsmaking"))
    Attendance.create!(:user => User.find_by_login("Mikael Vik"), :event => Event.find_by_name("Vinsmaking"))
    Attendance.create!(:user => User.find_by_login("Aslak HellesÃ¸y"), :event => Event.find_by_name("Vinsmaking"))
  end

  def self.down
    Attendance.each { |attendance| attendance.destroy }
  end
end
