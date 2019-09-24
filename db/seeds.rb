puts 'Destroying previous seed...'

Pathologie.destroy_all

puts 'Creating pathologies...'

pathology = ['Glaucome', 'Diabète', 'DMLA', 'Décolement de la rétine', 'Autres pathologies rétiniennes']

pathology.each do |maladie|
  Pathologie.create!(
    nom: maladie
  )
end

puts 'Creating chirurgies...'

chirurgy = ['Cataracte', 'Glaucome', 'IVT', 'Chirurgie Laser', 'Chirurgie des paupières']

chirurgy.each do |intervention|
  Chirurgie.create!(
    nom: intervention
  )
end

puts 'finished!'
