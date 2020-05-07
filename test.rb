def page_content(title)   #esté metódo carga el contenido de un text file y lo returno como string, pasas el pages title como argumento
  File.read("pages/#{title}.txt") #si no se encuentra el file.read
rescue Errno::ENOENT # Erno ENOENT exception will raise
  return nil #retorna Nil
end

puts page_content("Alan")
