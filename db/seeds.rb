# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

cohorts = [
            ['Jackrabbits', Date(2016,9,21), Date(2017,1,20)],
            ['Otters', Date(2016,10,20), Date(2017,2,10)],
            ['Squirrels', Date(2016,10,24), Date(2017,3,3)],
            ['Fireflies', Date(2016,11,14), Date(2017,3,24)],
            ['Foxes', Date(2016,12,5), Date(2017,4,14)],
            ['Chorus Frogs', Date(2017,1,3), Date(2017,5,5)],
            ['Bumblebees', Date(2017,1,23), Date(2017,5,26)],
            ['Fiddler Crabs', Date(2017,2,13), Date(2017,6,16)],
            ['Sea Lions', Date(2017,3,6), Date(2017,7,14)],
            ['ROCK DOVES!!!', Date(2017,3,27), Date(2017,8,4)],
            ['Fiery Skippers', Date(2017,4,17), Date(2017,8,25)],
            ['Pocket Gophers', Date(2017,5,8), Date(2017,9,15)],
            ['Nighthawks', Date(2017,5,30), Date(2017,10,6)],
            ['Golden Bears', Date(2017,6,19), Date(2017,10,27)],
            ['Red Pandas', Date(2017,7,17), Date(2017,11,17)],
            ['Salamanders', Date(2017,8,7), Date(2017,12,8)]
]

cohorts.each { |cohort| Cohort.create(name: cohort[0], start: cohort[1], end: cohort[2]) }
