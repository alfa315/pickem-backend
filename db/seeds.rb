# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
al = User.create(name: 'Al', wins: 0, total_picks: 0)

will = User.create(name: 'Will', wins: 0, total_picks: 0)



falcons = Team.create(name: "Atlanta Falcons", team_color: '#A6192E')

panthers = Team.create(name: "Carolina Panthers", team_color: '#0085CA')

saints = Team.create(name: "New Orleans Saints", team_color: '#A28D5B')

bucs = Team.create(name: "Tampa Bay Buccaneers", team_color: '#C8102E')

giants = Team.create(name: 'New York Giants', team_color: '#001E62')

eagles = Team.create(name: 'Philadelphia Eagles', team_color: '#004851')

cowboys = Team.create(name: 'Dallas Cowboys', team_color: '#003594')

redskins = Team.create(name: 'Washington Redskins', team_color: '#862633')

packers = Team.create(name: 'Green Bay Packers', team_color: '#175E33')

vikings = Team.create(name: 'Minnesota Vikings', team_color: ' #512D6D')

lions = Team.create(name: 'Detroit Lions', team_color: '#0069B1')

bears = Team.create(name: 'Chicago Bears', team_color: '#051C2C')

seahawks = Team.create(name: 'Seattle Seahawks', team_color: '#001433')

sanfran = Team.create(name: 'San Francisco 49ers', team_color: '#9B2743')

cardinals = Team.create(name: 'Arizona Cardinals', team_color: '#9B2743')

rams = Team.create(name: 'Los Angeles Rams', team_color: '#002244')

broncos = Team.create(name: 'Denver Broncos', team_color: '#FC4C02')

chargers = Team.create(name: 'Los Angeles Chargers', team_color: '#0C2340')

raiders = Team.create(name: 'Oakland Raiders', team_color: '#101820')

chiefs = Team.create(name: 'Kansas City Chiefs', team_color: '#C8102E')

patriots = Team.create(name: 'New England Patriots', team_color: '#0C2340')

jets = Team.create(name: 'New York Jets', team_color: '#0C371D')

bills = Team.create(name: 'Buffalo Bills', team_color: '#00338D')

dolphins = Team.create(name: 'Miami Dolphins', team_color: '#008E97')

colts = Team.create(name: 'Indianapolis Colts', team_color: '#001489')

titans = Team.create(name: 'Tennessee Titans', team_color: '#0C2340')

texans = Team.create(name: 'Houston Texans', team_color: '#091F2C')

jaguars = Team.create(name: 'Jacksonville Jaguars', team_color: '#006073')

steelers = Team.create(name: 'Pittsburgh Steelers', team_color: '#FFB81C')

ravens = Team.create(name: 'Baltimore Ravens', team_color: '#241773')

browns = Team.create(name: 'Cleveland Browns', team_color: '#382F2D')

bengals = Team.create(name: 'Cincinnati Bengals', team_color: '#FC4C02')

w1 = Week.create(week_number: 1)

w1.new_game(steelers, ravens)

w2 = Week.create(week_number: 2)

w2.new_game(patriots, jets)

w3 = Week.create(week_number: 3)

w3.new_game(falcons, saints)

w4 = Week.create(week_number: 4)

w4.new_game(packers, bears)

w5 = Week.create(week_number: 5)

w5.new_game(bengals, browns)

w6 = Week.create(week_number: 6)

w6.new_game(jaguars, titans)

w7 = Week.create(week_number: 7)

w7.new_game(dolphins, bills)

w8 = Week.create(week_number: 8)

w8.new_game(chargers, patriots)
w8.new_game(dolphins, ravens)
w8.new_game(vikings, browns)
w8.new_game(falcons, jets)

w9 = Week.create(week_number: 9)

w9.new_game(panthers, seahawks)

w10 = Week.create(week_number: 10)

w10.new_game(lions, vikings)

w11 = Week.create(week_number: 11)

w11.new_game(raiders, rams)

w12 = Week.create(week_number: 12)

w12.new_game(giants, eagles)

w13 = Week.create(week_number: 13)

w13.new_game(cowboys, redskins)

w14 = Week.create(week_number: 14)

w14.new_game(bucs, steelers)

w15 = Week.create(week_number: 15)

w15.new_game(chargers, chiefs)

w16 = Week.create(week_number: 16)

w16.new_game(colts, ravens)

w17 = Week.create(week_number: 17)

w17.new_game(panthers, falcons)



Game.create(home_team: falcons, away_team: giants)
