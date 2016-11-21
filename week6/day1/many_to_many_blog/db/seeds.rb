# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create!(name: "Ariel")
user2 = User.create!(name: "Chenje")
user3 = User.create!(name: "Xiomara")


        user1.posts.create!(title: "This week in food", text: "Man bun keytar cred hot chicken. Humblebrag sartorial post-ironic, pabst lo-fi sriracha normcore literally hell of jianbing organic cronut forage unicorn church-key. Kombucha lomo man braid, man bun letterpress etsy everyday carry occupy flexitarian.")
postA = user1.posts.create!(title: "Destroying n00bs", text: "Keffiyeh brunch squid, pop-up vape schlitz gluten-free banjo. Fanny pack leggings selfies vinyl, gochujang post-ironic heirloom enamel pin lomo 90's. ")

        user2.posts.create!(title: "Using Paperclip to manage images in Rails 5", text: "Bushwick leggings trust fund, green juice gentrify man braid kickstarter mustache DIY health goth.")
postB = user2.posts.create!(title: "To bootcamp or not to bootcamp", text: "Green juice VHS craft beer photo booth bushwick iPhone, franzen fam organic authentic flexitarian helvetica.")

        user3.posts.create!(title: "Traveling nica-smart", text: "Live-edge irony occupy hammock, pop-up la croix shabby chic vape cliche tumeric aesthetic hashtag biodiesel vaporware.")
postC = user3.posts.create!(title: "Granada's sustainable tourism", text: "Seitan health goth craft beer, crucifix wayfarers VHS next level skateboard.")


tagA = Tag.create!(name: "Video Games")
tagB = Tag.create!(name: "n00bs")
tagC = Tag.create!(name: "Web Development")
tagD = Tag.create!(name: "Rails")
tagE = Tag.create!(name: "Sustainability")
tagF = Tag.create!(name: "Tourism")


PostTag.create!(post_id: postA.id, tag_id: tagA.id)
PostTag.create!(post_id: postA.id, tag_id: tagB.id)


PostTag.create!(post: postB, tag: tagC)
PostTag.create!(post: postB, tag: tagD)


postC.tags.push(tagE)
postC.tags.push(tagF)


puts "Seeds done"
