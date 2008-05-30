class AddAttendanceDataForPresentation < ActiveRecord::Migration
  def self.up
    Attendance.create!(:user => User.find_by_login("Mikael Vik"), :event => Event.find_by_name("Fagdag"))
    Attendance.create!(:user => User.find_by_login("Klara Rohlin"), :event => Event.find_by_name("Fagdag"))

    Attendance.create!(:user => User.find_by_login("Torbjørn Vatn"), :event => Event.find_by_name("Vinsmaking"))
    Attendance.create!(:user => User.find_by_login("Mikael Vik"), :event => Event.find_by_name("Vinsmaking"))
    Attendance.create!(:user => User.find_by_login("Aslak Hellesøy"), :event => Event.find_by_name("Vinsmaking"))
  end

  def self.down
    Attendance.find(:all).each { |attendance| attendance.destroy }
  end
end
