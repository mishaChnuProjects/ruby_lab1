module ItemContainer
    def self.included(base)
      base.extend ClassMethods
      base.include InstanceMethods
    end
  
    include Enumerable
  
    def each 
      return unless block_given?
      items.each do |item|
          yield item
      end  
    end
    
    module ClassMethods
    end
  
    module InstanceMethods
      def add_item(item)
        @items << item
      end
  
      def remove_item(item)
        @items.delete(item)
      end
  
      def delete_items
        @items.clear
      end
  
      def to_s
        puts @items
      end
  
      def total_items
        @items.size
      end
  
      def to_h
      {
        items: @items.map(&:to_h), 
        total_items: total_items
      }
      end
  
    end 
  end