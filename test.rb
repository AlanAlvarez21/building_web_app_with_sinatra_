def save_content(title, content)                   #this method take 2 strings as parameters, the first holds the oage title and the another the holds the page content
  File.open("pages/#{title}.txt", "w") do |file|
    file.print(content)
  end
end

save_content("Ben Deitch", "Treehouse Android teacher")
