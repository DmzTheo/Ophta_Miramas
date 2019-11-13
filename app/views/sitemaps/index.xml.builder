xml.instruct! :xml, version: '1.0', encoding: 'UTF-8'

xml.tag! 'sitemapindex', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.tag! 'sitemap' do
    xml.tag! 'loc', root_url
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_lunettes_url
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_centre_url
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_equipe_url
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pages_telechargements_url
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', pathologies_url
  end

  xml.tag! 'sitemap' do
    xml.tag! 'loc', chirurgies_url
  end

  @chirurgies.each do |chirurgy|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', chirurgy_url(chirurgy)
      xml.lastmod chirurgy.updated_at.strftime("%F")
    end
  end

  @pathologies.each do |pathology|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', pathology_url(pathology)
      xml.lastmod pathology.updated_at.strftime("%F")
    end
  end

  @bilans.each do |bilan|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', bilancliniquepreoperatoire_url(bilan)
      xml.lastmod bilan.updated_at.strftime("%F")
    end
  end

  @choisisses.each do |choisisse|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', choisissezvotreimplant_url(choisisse)
      xml.lastmod choisisse.updated_at.strftime("%F")
    end
  end

  @consignes.each do |consigne|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', consignepostoperatoire_url(consigne)
      xml.lastmod consigne.updated_at.strftime("%F")
    end
  end

  @prepares.each do |prepare|
    xml.tag! 'sitemap' do
      xml.tag! 'loc', preparerlintervention_url(prepare)
      xml.lastmod prepare.updated_at.strftime("%F")
    end
  end

end
