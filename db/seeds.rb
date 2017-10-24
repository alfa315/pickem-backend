# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

falcons = Team.create(name: "Atlanta Falcons", team_color: '#A6192E')

giants = Team.create(name: 'New York Giants', team_color: '#001E62')

packers = Team.create(name: 'Green Bay Packers', team_color: '#175E33')

broncos = Team.create(name: 'Denver Broncos', team_color: '#FC4C02')

al = User.create(name: 'Al', wins: 0, losses: 0)

will = User.create(name: 'Will', wins: 0, losses: 0)

week1 = Week.create(week_number: 1)

week2 = Week.create(week_number: 2)

w1g1 = Game.create(home_team: falcons, away_team: giants, winning_team_id: 1, week_id: 1)

w1g2 = Game.create(home_team: packers, away_team: broncos, winning_team_id: 3, week_id: 1)

w2g2 = Game.create(home_team: giants, away_team: packers, winning_team_id: 2, week_id: 2)

w2g2 = Game.create(home_team: broncos, away_team: falcons, winning_team_id: 4, week_id: 2)
