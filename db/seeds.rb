# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

falcons = Team.create(name: "Atlanta Falcons")

giants = Team.create(name: 'New York Giants')

al = User.create(name: 'Al', wins: 0, losses: 0)

will = User.create(name: 'Will', wins: 0, losses: 0)

week1 = Week.create(week_number: 1)

g1 = Game.create(home_team: falcons, away_team: giants, winning_team_id: 1, week_id: 1)
