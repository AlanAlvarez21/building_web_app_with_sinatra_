require 'sinatra'

set :bind, "0.0.0.0"

def page_content(title)           #esté metódo carga el contenido de un text file y lo returno como string, pasas el pages title como argumento
  File.read("pages/#{title}.txt") #si no se encuentra el file.read
rescue Errno::ENOENT              # Erno ENOENT exception will raise
  return nil                      #Return Nil Many methods can return nil as a result, This happens when you ask for a value but that value is not available.
end


get "/" do                        # calls the erb welcome file
 erb :welcome
end


get "/test" do                    #call test.erb, is a regular embebed code
 erb :test
end


get "/demo" do
  erb :demo
end

get "/:title" do                  #the path to make match he url parameter, parameters are marked with a colon followed by a parameter name
page_content(params[:title])
end
