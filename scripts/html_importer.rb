require 'open-uri'

Pages.all.each do |p|
  puts p.url
  doc = Nokogiri::HTML(open(p.url))
  doc_content = doc.xpath("//div[contains(@class,'primary-content')]")
  p.title = doc.title
  p.content = doc_content
  p.save
end
  
