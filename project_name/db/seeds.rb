# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


User.create!({username: 'Paul'})
User.create!({username: 'Jose'})
User.create!({username: 'Josh'})

Artwork.create!({title: 'a/A still life', image_url: 'www.rude.com', artist_id: User.first.id})
Artwork.create!({title: 'my twenties waste', image_url: 'www.playtoomanyvids.com', artist_id: User.second.id})
Artwork.create!({title: 'vacation', image_url: 'www.airbnb.com', artist_id: User.third.id})

ArtworkShare.create!({artwork_id: Artwork.all.first.id, viewer_id: User.all.first.id})
ArtworkShare.create!({artwork_id: Artwork.all.second.id, viewer_id: User.all.second.id})
ArtworkShare.create!({artwork_id: Artwork.all.third.id, viewer_id: User.all.third.id})