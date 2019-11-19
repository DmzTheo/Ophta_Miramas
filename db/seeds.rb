puts 'Destroying previous seed...'

Pathologie.destroy_all
Bilancliniquepreoperatoire.destroy_all
Consignepostoperatoire.destroy_all
Preparerlintervention.destroy_all
Choisissezvotreimplant.destroy_all
Chirurgie.destroy_all

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

puts 'Creating bilans'

chirurgy.each do |intervention|
  Bilancliniquepreoperatoire.create!(
    chirurgie_id: Chirurgie.find_by(nom: intervention).id
  )
end

puts 'Creating consignes'

chirurgy.each do |intervention|
  Consignepostoperatoire.create!(
    chirurgie_id: Chirurgie.find_by(nom: intervention).id
  )
end

puts 'Creating consignes'

chirurgy.each do |intervention|
  Preparerlintervention.create!(
    chirurgie_id: Chirurgie.find_by(nom: intervention).id
  )
end

puts 'Creating one implant'

Choisissezvotreimplant.create!(
  chirurgie_id: Chirurgie.find_by(nom: 'Cataracte').id
)

puts 'finished!'
