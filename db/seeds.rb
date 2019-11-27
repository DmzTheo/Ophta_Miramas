puts 'Destroying previous seed...'

Pathologie.destroy_all
Chirurgie.destroy_all
Detail.destroy_all

puts 'Creating pathologies...'

pathology = ['Glaucome', 'Diabète', 'DMLA', 'Décolement de la rétine']

pathology.each do |maladie|
  Pathologie.create!(
    nom: maladie
  )
end

puts 'Creating chirurgies'

chirurgy = ['Cataracte', 'IVT', 'Chirurgie réfractive', 'Chirurgie des paupières']

chirurgy.each do |intervention|
  Chirurgie.create!(
    nom: intervention
  )
end

puts 'Creating details'

chirurgy.each do |intervention|
  Detail.create!(
    chirurgie_id: Chirurgie.find_by(nom: intervention).id,
  )
end

puts 'finished!'
