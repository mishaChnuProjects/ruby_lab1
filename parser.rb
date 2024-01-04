module Parser_Shelest
  class Parser 

    def self.parse_items()
      items = [] 

      doc = Nokogiri::HTML(Faraday.get(Parser_Shelest.web_address).body)
      rows = doc.css("div.content-bar") 

      rows.each_with_index do |row, index| 
        break if index == Parser_Shelest.numbers 

        title = row.css("div.item.ticket-title a").text
        generation = row.css("div.generation").text
        price = row.css("div.price-ticket").text
        location = row.css("div.definition-data li.item-char.view-location.js-location").text
        car_mileage = row.css("div.definition-data li.item-char.js-race").text
        
        item = Item.new(title, generation, price, location, car_mileage)
        items << item 
      end
      items 
    end
  end
end

