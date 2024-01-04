Parser_Shelest.config do |parser_shelest|
    parser_shelest.web_address = "https://auto.ria.com/uk/search/"
    parser_shelest.numbers = 10
    parser_shelest.path = "./save_files"
    parser_shelest.file_ext = [".txt", ".json", ".csv"]
    
    puts parser_shelest
end

