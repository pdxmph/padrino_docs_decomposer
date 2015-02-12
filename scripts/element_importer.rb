elements = ["ol","pre","img"]

Page.all.each do |p|
  puts p.title
  html = Nokogiri::HTML(p.content)

  elements.each do |e|
    html.xpath("//#{e}").each do |h|
    next if h['class'] == "toc"
    hash = Digest::MD5.hexdigest(h)
    element = Element.new
    element.checksum = hash
    element.content = h
    element.page_id = p.id
    element.filename = p.filename
    element.kind = e
    element.save
    
    end
  end
end


  
