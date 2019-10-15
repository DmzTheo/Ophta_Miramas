puts 'Destroying previous seed...'

Pathologie.destroy_all
Bilancliniquepreoperatoire.destroy_all
Chirurgie.destroy_all

puts 'Creating pathologies...'

pathology = ['Glaucome', 'Diabète', 'DMLA', 'Décolement de la rétine']

pathology.each do |maladie|
  Pathologie.create!(
    nom: maladie
  )
end

puts 'Creating chirurgies et chirurgies descriptions...'

chirurgy = ['Cataracte', 'IVT', 'Chirurgie Laser', 'Chirurgie des paupières']

chirurgy.each do |intervention|
  Chirurgie.create!(
    nom: intervention
  )
  Bilancliniquepreoperatoire.create!(
    name: intervention
  )
  Consignepostoperatoire.create!(
    name: intervention
  )
  Preparerlintervention.create!(
    name: intervention
  )
end

Choisissezvotreimplant.create!(
  name: 'Cataracte'
)

puts 'finished!'
