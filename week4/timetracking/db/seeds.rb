# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


projectA = Project.create!(name: "Ironhack")
projectB = Project.create!(name: "Wendy's", description: "Research on tasty burgers")
projectC = Project.create!(name: "Papa John's Virtual Pizza", description: "In your face Magic Leap.")
projectD = Project.create!(name: "Dota 2 App")
projectE = Project.create!(name: "Pokemon Go App")
projectF = Project.create!(name: "Star Wars App")
projectG = Project.create!(name: "luckye.gg")
projectH = Project.create!(name: "wat.co")
projectI = Project.create!(name: "Tabtervention", description: "Chrome Plugin that removes old tabs.")
projectJ = Project.create!(name: "Q Bot", description: "Slack bot that queues you up.")


# The following 3 lines are equivalent
TimeEntry.create!(hours: 2, minutes: 30, comments: "blah", date: Date.today, project_id: projectA.id)
TimeEntry.create!(hours: 2, minutes: 30, comments: "blah", date: Date.today, project: projectA)
                                                               # belongs_to :project

     projectA.time_entries.create!(hours: 2, minutes: 30, comments: "blah", date: Date.today)
  # has_many :time_entries


# Papa Johns time entries
projectC.time_entries.create!(hours: 3, minutes: 45, comments: "Papa Johns stuff", date: Date.today)
projectC.time_entries.create!(hours: 6, minutes: 45, comments: "Papa Johns app", date: Date.today - 3.days)
projectC.time_entries.create!(hours: 1, minutes: 0, comments: "Papa Johns research", date: Date.today - 5.days)


# Dota 2 time entries
projectD.time_entries.create!(hours: 4, minutes: 15, comments: "Added heroes", date: Date.today - 4.days)


# Q bot time entries
projectJ.time_entries.create!(hours: 2, minutes: 0, comments: "Review", date: Date.today - 2.days)
