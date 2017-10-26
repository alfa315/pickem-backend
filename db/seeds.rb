# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
al = User.create(name: 'Al')

will = User.create(name: 'Will')



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
w8.new_game(raiders, bills)
w8.new_game(colts, bengals)
w8.new_game(bears, saints)
w8.new_game(sanfran, eagles)
w8.new_game(panthers, bucs)
w8.new_game(texans, seahawks)
w8.new_game(cowboys, redskins)
w8.new_game(steelers, lions)
w8.new_game(broncos, chiefs)


w9 = Week.create(week_number: 9)

w9.new_game(panthers, seahawks)
w9.new_game(bills, jets)
w9.new_game(ravens, titans)
w9.new_game(bucs, saints)
w9.new_game(rams, giants)
w9.new_game(broncos, eagles)
w9.new_game(falcons, panthers)
w9.new_game(bengals, jaguars)
w9.new_game(colts, texans)
w9.new_game(cardinals, sanfran)
w9.new_game(redskins, seahawks)
w9.new_game(chiefs, cowboys)
w9.new_game(raiders, dolphins)
w9.new_game(lions, packers)

w10 = Week.create(week_number: 10)

w10.new_game(packers, bears)
w10.new_game(seahawks, cardinals)
w10.new_game(saints, bills)
w10.new_game(browns, lions)
w10.new_game(steelers, colts)
w10.new_game(chargers, jaguars)
w10.new_game(jets, bucs)
w10.new_game(bengals, titans)
w10.new_game(vikings, redskins)
w10.new_game(texans, rams)
w10.new_game(cowboys, falcons)
w10.new_game(giants, sanfran)
w10.new_game(patriots, broncos)
w10.new_game(dolphins, panthers)

w11 = Week.create(week_number: 11)

w11.new_game(titans, steelers)
w11.new_game(lions, bears)
w11.new_game(jaguars, browns)
w11.new_game(ravens, packers)
w11.new_game(bucs, dolphins)
w11.new_game(rams, vikings)
w11.new_game(redskins, saints)
w11.new_game(chiefs, giants)
w11.new_game(cardinals, texans)
w11.new_game(bills, chargers)
w11.new_game(bengals, broncos)
w11.new_game(patriots, raiders)
w11.new_game(eagles, cowboys)
w11.new_game(falcons, seahawks)

w12 = Week.create(week_number: 12)

w12.new_game(giants, redskins)
w12.new_game(vikings, lions)
w12.new_game(chargers, cowboys)
w12.new_game(bucs, falcons)
w12.new_game(browns, bengals)
w12.new_game(titans, colts)
w12.new_game(bills, chiefs)
w12.new_game(dolphins, patriots)
w12.new_game(panthers, jets)
w12.new_game(bears, eagles)
w12.new_game(saints, rams)
w12.new_game(seahawks, sanfran)
w12.new_game(broncos, raiders)
w12.new_game(jaguars, cardinals)
w12.new_game(packers, steelers)
w12.new_game(texans, ravens)

w13 = Week.create(week_number: 13)

w13.new_game(redskins, cowboys)
w13.new_game(vikings, falcons)
w13.new_game(patriots, bills)
w13.new_game(sanfran, bears)
w13.new_game(bucs, packers)
w13.new_game(texans, titans)
w13.new_game(broncos, dolphins)
w13.new_game(panthers, saints)
w13.new_game(chiefs, jets)
w13.new_game(colts, jaguars)
w13.new_game(lions, ravens)
w13.new_game(browns, chargers)
w13.new_game(giants, raiders)
w13.new_game(rams, cardinals)
w13.new_game(eagles,seahawks)
w13.new_game(steelers, bengals)

w14 = Week.create(week_number: 14)

w14.new_game(saints, falcons)
w14.new_game(colts, bills)
w14.new_game(bears, bengals)
w14.new_game(packers, browns)
w14.new_game(raiders, chiefs)
w14.new_game(lions, bucs)
w14.new_game(vikings, panthers)
w14.new_game(seahawks, jaguars)
w14.new_game(sanfran, texans)
w14.new_game(jets, broncos)
w14.new_game(titans, cardinals)
w14.new_game(redskins, chargers)
w14.new_game(eagles, rams)
w14.new_game(cowboys, giants)
w14.new_game(ravens, steelers)
w14.new_game(patriots, dolphins)

w15 = Week.create(week_number: 15)

w15.new_game(chargers, chiefs)
w15.new_game(broncos, colts)
w15.new_game(bears, lions)
w15.new_game(dolphins, bills)
w15.new_game(ravens, browns)
w15.new_game(bengals, vikings)
w15.new_game(jets, saints)
w15.new_game(eagles, giants)
w15.new_game(cardinals, redskins)
w15.new_game(packers, panthers)
w15.new_game(texans, jaguars)
w15.new_game(rams, seahawks)
w15.new_game(patriots, steelers)
w15.new_game(titans, sanfran)
w15.new_game(cowboys, raiders)
w15.new_game(falcons, bucs)

w16 = Week.create(week_number: 16)

w16.new_game(colts, ravens)
w16.new_game(vikings, packers)
w16.new_game(browns, bears)
w16.new_game(lions, bengals)
w16.new_game(rams, titans)
w16.new_game(dolphins, chiefs)
w16.new_game(bills, patriots)
w16.new_game(falcons, saints)
w16.new_game(chargers, jets)
w16.new_game(broncos, redskins)
w16.new_game(bucs, panthers)
w16.new_game(jaguars, sanfran)
w16.new_game(seahawks, cowboys)
w16.new_game(giants, cardinals)
w16.new_game(steelers, texans)
w16.new_game(raiders, eagles)

w17 = Week.create(week_number: 17)

w17.new_game(panthers, falcons)
w17.new_game(packers, lions)
w17.new_game(jaguars, titans)
w17.new_game(texans, colts)
w17.new_game(bills, dolphins)
w17.new_game(bears, vikings)
w17.new_game(jets, patriots)
w17.new_game(redskins, giants)
w17.new_game(cowboys, eagles)
w17.new_game(browns, steelers)
w17.new_game(saints, bucs)
w17.new_game(bengals, ravens)
w17.new_game(chiefs, broncos)
w17.new_game(sanfran, rams)
w17.new_game(raiders, chargers)
w17.new_game(cardinals, seahawks)
