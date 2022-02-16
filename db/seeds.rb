# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


CALENDARS = [
français =            Calendar.create!(name: "Français",                 background_color: "#f6da00"),
allemand =            Calendar.create!(name: "Allemand",                 background_color: "#f6da00"),
anglais =             Calendar.create!(name: "Anglais",                  background_color: "#f6da00"),
mathématiques =       Calendar.create!(name: "Mathématiques",            background_color: "#8a0100"),
sciences =            Calendar.create!(name: "Sciences",                 background_color: "#8a0100"),
géographie =          Calendar.create!(name: "Géographie",               background_color: "#407c51"),
histoire =            Calendar.create!(name: "Histoire",                 background_color: "#407c51"),
citoyenneté =         Calendar.create!(name: "Citoyenneté",              background_color: "#407c51"),
acm =                 Calendar.create!(name: "ACM",                      background_color: "#ee5829"),
avs =                 Calendar.create!(name: "AVS",                      background_color: "#ee5829"),
musique =             Calendar.create!(name: "Musique",                  background_color: "#ee5829"),
eps =                 Calendar.create!(name: "EPS",                      background_color: "#3b74c9"),
edu_nutritionnelle =  Calendar.create!(name: "Éducation nutritionnelle", background_color: "#3b74c9"),
edu_numérique =       Calendar.create!(name: "Éducation numérique",      background_color: "#ba82ef"),
fg =                  Calendar.create!(name: "FG",                       background_color: "#8015e8"),
ct =                  Calendar.create!(name: "CT",                       background_color: "#4f1d0e")
]

1.upto(1) do |i|
  meetings = Meeting.create!(name: "Meeting #{i+1}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id:  1, start_time: (Date.today + (i+7).hours), end_time: (Date.today + (i+8.5).hours))
  meetings = Meeting.create!(name: "Meeting #{i+2}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id:  4, start_time: (Date.today + (i+9).hours), end_time: (Date.today + (i+9.5).hours))
  meetings = Meeting.create!(name: "Meeting #{i+3}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id:  6, start_time: (Date.today + (i+10).hours), end_time: (Date.today + (i+10.5).hours))
  meetings = Meeting.create!(name: "Meeting #{i+4}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 11, start_time: (Date.today + (i+7).hours + 1.day), end_time: (Date.today + (i+8.5).hours))
  meetings = Meeting.create!(name: "Meeting #{i+5}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 13, start_time: (Date.today + (i+9).hours + 2.day), end_time: (Date.today + (i+8.5).hours))
  meetings = Meeting.create!(name: "Meeting #{i+6}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 14, start_time: (Date.today + (i+11).hours + 3.day), end_time: (Date.today + (i+8.5).hours))
  meetings = Meeting.create!(name: "Meeting #{i+7}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 11, start_time: (Date.today + (i+11).hours + 1.day), end_time: (Date.today + (i+8.5).hours + 1.day))
  meetings = Meeting.create!(name: "Meeting #{i+8}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 13, start_time: (Date.today + (i+12).hours + 2.day), end_time: (Date.today + (i+8.5).hours + 2.day))
  meetings = Meeting.create!(name: "Meeting #{i+9}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 14, start_time: (Date.today + (i+14).hours + 3.day), end_time: (Date.today + (i+8.5).hours + 3.day))
  meetings = Meeting.create!(name: "Meeting #{i+10}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 15, start_time: (Date.today + (i+15).hours + 1.week), end_time: (Date.today + (i+8.5).hours + 1.week))
  meetings = Meeting.create!(name: "Meeting #{i+11}", description: "Meeting description", location: "Suisse", calendar: nil, calendar_id: 16, start_time: (Date.today + (i+16).hours + 1.month), end_time: (Date.today + (i+8.5).hours + 1.month))
end
