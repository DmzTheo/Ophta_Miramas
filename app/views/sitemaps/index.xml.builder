xml.instruct! :xml, version: '1.0', encoding: 'UTF-8'


xml.tag! 'sitemapindex', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.tag! 'sitemap' do
    xml.tag! 'loc', root_path
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_lunettes_path
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_centre_path
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_equipe_path
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_telechargements_path
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pathologies_path
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', chirurgies_path
  end

  @chirurgies.each do |chirurgy|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', chirurgy_path(chirurgy)
      xml.lastmod chirurgy.updated_at.strftime("%F")
    end
  end

  @pathologies.each do |pathology|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', pathology_path(pathology)
      xml.lastmod pathology.updated_at.strftime("%F")
    end
  end

  @bilans.each do |bilan|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', bilancliniquepreoperatoire_path(bilan)
      xml.lastmod bilan.updated_at.strftime("%F")
    end
  end

  @choisisses.each do |choisisse|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', choisissezvotreimplant_path(choisisse)
      xml.lastmod choisisse.updated_at.strftime("%F")
    end
  end

  @consignes.each do |consigne|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', consignepostoperatoire_path(consigne)
      xml.lastmod consigne.updated_at.strftime("%F")
    end
  end

  @prepares.each do |prepare|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', preparerlintervention_path(prepare)
      xml.lastmod prepare.updated_at.strftime("%F")
    end
  end

end
