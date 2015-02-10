#!/usr/bin/env ruby

require 'open-uri'
pages = Page.all

pages.each do |p|
  puts p.url
  doc = Nokogiri::HTML(open(p.url))

  p.title = doc.title
  p.content = doc.to_html
  p.save
end
  
