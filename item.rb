module Parser_Shelest
    class Item
      attr_accessor :title, :generation, :price, :location, :car_mileage
  
      
      def initialize(title, generation, price, location, car_mileage)
        @title = title
        @generation = generation
        @price = price 
        @location = location
        @car_mileage = car_mileage
       
      end
  
      def to_s
        "#{@title} \t #{@generation}  #{@price}  #{@location}  #{@car_mileage} "
      end
      
      def to_h # створення хешу 
        {
          title: @title, 
          generation: @generation, 
          price: @price, 
          location: @location, 
          car_mileage: @car_mileage, 
          
        }
      end
    end
  end