class ParserAvitoController < ApplicationController
  
  require "open-uri"
  require "nokogiri"


  def index
   
	  avito_link = open("https://www.avito.ru/rossiya/nedvizhimost")
	  avito_doc = Nokogiri::HTML(avito_link)
	 
	  items = []
	  @count = 0

	  avito_doc.css('.item_table.c-b-2').each do |item| 
	  @item = item.at_css("h3 .title" a[title]).text.strip
	  @count += 1
	  end
    

	  avito_doc.css('.item_table.c-b-0').each do |item| 
	  
	  @count += 1
	  end

	    #show html
	  # @item = title

  end
end

# 

# 	def index
# 		# Parse the URI and retrieve it to a temporary file
# 		news_tmp_file = open('https://news.google.com')

# 		# Parse the contents of the temporary file as HTML<
# 		doc = Nokogiri::HTML(news_tmp_file)<
       	
# 	end