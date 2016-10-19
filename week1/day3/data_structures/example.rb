
superheroes = [0, 1, 2, { :allies => [0, 1, { :superpowers => [0, { :name => "teleportation" }] }] }]

p superheroes[3][:allies][2][:superpowers][1][:name]

#=> "teleportation"
