module Parser_Shelest
    class Cart
      include ItemContainer # підключення модуля
  
      def initialize
        @items = []
      end
    
      def save_to_file()
        File.open("#{Parser_Shelest.path}/data.txt", "w") do |file|
          file.puts "Cart contents:"
          file.puts @items
          file.puts "Total items: #{total_items}"
        end
      end
    
      def save_to_json()
  
        File.open("#{Parser_Shelest.path}/data.json", "w") do |file|
          file.puts JSON.pretty_generate(to_h)
        end
      end
    
      def save_to_csv()
        CSV.open("#{Parser_Shelest.path}/data.csv", "w") do |csv|
          csv << ["title", "generation", "price", "location", "car_mileage" ] 
          @items.each do |item|
            csv << item.to_h.values
          end
        end
      end
  
    end  
  end