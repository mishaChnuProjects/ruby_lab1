module Parser_Shelest
    class MainApplication
  
      def run
        cart = Cart.new #свторює колекцію
        items = Parser.parse_items()
  
        items.each do |item|
          cart.add_item(item)
          puts " '#{item.to_s}', object added "
        end
  
        Parser_Shelest.file_ext.each do |element|
          case element
          when ".txt"
            cart.save_to_file()
          when ".csv"
            cart.save_to_csv()
          when ".json"
            cart.save_to_json()
          else
            puts "Invalid format"
          end
        end
      end
    end
  end