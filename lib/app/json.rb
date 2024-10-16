class json



doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
hash={}
cryptos=doc.xpath("//tr/td[2]/div/a[2]").map {|crypto| crypto.text }
valeurs=doc.xpath("//tr/td[5]/div/span").map {|crypto| crypto.text.gsub('$', '').gsub(',', '').to_f }
hash = cryptos.zip(valeurs).to_h
puts hash