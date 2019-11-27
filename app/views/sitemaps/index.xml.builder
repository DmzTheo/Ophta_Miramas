xml.instruct! :xml, version: '1.0', encoding: 'UTF-8'

xml.tag! 'urlset', 'xmlns' => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  xml.tag! 'url' do
    xml.tag! 'loc', root_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', lunettes_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', centre_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', equipe_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', telechargements_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', charte_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', pathologies_url
  end

  xml.tag! 'url' do
    xml.tag! 'loc', chirurgies_url
  end

  @pathologies.each do |pathology|
    xml.tag! 'url' do
      xml.tag! 'loc', pathology_url(pathology)
    end
  end
  @chirurgies.each do |chirurgy|
    xml.tag! 'url' do
      xml.tag! 'loc', chirurgy_url(chirurgy)
    end
    if chirurgy.nom != 'Chirurgie des paupières'
      xml.tag! 'url' do
        xml.tag! 'loc', chirurgy_detail_url(chirurgy)
      end
    end
  end
end
