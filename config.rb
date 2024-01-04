module Parser_Shelest

    class << self
        attr_accessor :web_address, :file_ext, :numbers, :path # створення сеттерів  і геттерів 
        
        def config
            return to_s unless block_given?
            if @parser_shelest
                puts "\nНеможливо змінити конфігурацію\n" 
                return
            end
            yield self
            @parser_shelest ||= self
            #@parser_shelest.freeze
        end
        
        private 

        def to_s
            str = "\nParser program config:\n"
            str += "    web_address: #{@web_address}\n" if @web_address
            str
        end 
    end
end