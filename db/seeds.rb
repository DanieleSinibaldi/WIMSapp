# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |p|
    5.times do |r|
        o="g"
        n= rand(1..3)
        if n==1
            o="g"
        elsif n==2
            o="y"
        else
            o="r"
        end
        if (p+1)<10
            Room.create!(name: "Room #{r+1}",
                         place: "Place 0#{p+1}",
                         floor: (p+r+2)%2,
                         nseat: 20+p+r+2,
                         hopen: 8,
                         minopen: 30,
                         hclose: 19,
                         minclose: 0,
                         occupation: o)
        else
            Room.create!(name: "Room #{r+1}",
                         place: "Place #{p+1}",
                         floor: (p+r+2)%2,
                         nseat: 20+p+r+2,
                         hopen: 8,
                         minopen: 30,
                         hclose: 19,
                         minclose: 0,
                         occupation: o)
        end
    end
end
