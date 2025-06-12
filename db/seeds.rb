# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ['Action', 'Comedy', 'Drama', 'Horror'].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clean the database
puts 'cleaning database.....'
Restaurant.destroy_all

# Create the instances
puts 'creating restaurants......'
Restaurant.create!(name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'italian')
puts 'Created Dishoom'
Restaurant.create!(name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian')
puts 'Created Pizza East'
Restaurant.create!(name: 'Two Brewers', address: 'Park Street, Windsor', category: 'french')
puts 'Two Brewers'
Restaurant.create!(name: 'Café de la Place', address: 'Place de la République, Alet-les-Bains', category: 'belgian')
puts 'Created Chez Hahn'
Restaurant.create!(name: 'Chez Antoinette', address: '57 Avenue Nicolas Pavillon, Alet-les-Bains', category: 'japanese')
puts 'Created Chez Antoinette'

# Display a message
puts "Finished! Created #{Restaurant.count} restaurants"
