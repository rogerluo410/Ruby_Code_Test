require 'anemone'

url = "https://github.com/intridea/multi_json"
Anemone.crawl(url,:discard_page_bodies => true,:depth_limit => 0) do |anemone|
        anemone.on_every_page do | page |
        #p  qq.gsub(">COPYING<")
        #p page
         licensename = nil
         p "html?"
         if page.html?
            p "html!"
            page.doc.xpath("//a[@title]").each do | title |
                    if  title.css('/@title').map(&:value).to_s =~ /(copying|license){1}(.[a-zA-Z]{0,})?[^\w\s&quot;-]+/i  and title.css('/@title').map(&:value)[0].to_s[0] =~/c|l/i
                        licensename =  title.css('/@title').map(&:value)[0] 
                    end

            end


            p licensename
            p page.doc.css("a[title='#{licensename}']").css('/@href').map(&:value)[0]
         end
       # page.doc.css("a")
        #p doc.css("span")
        
        #p page.doc.css("td")#.css('a[title=COPYING]')
          #p page.doc.css('a[title=~/copying/i]').css('/@href').map(&:value)
           #p page.doc.css('a[title=~/license/i]').css('/@href').map(&:value) 
        end
      
      end

