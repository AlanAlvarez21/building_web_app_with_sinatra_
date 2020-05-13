require 'sinatra'
require 'uri'

set :bind, "0.0.0.0"

def page_content(title)           #esté metódo carga el contenido de un text file y lo returno como string, pasas el pages title como argumento
  File.read("pages/#{title}.txt") #si no se encuentra el file.read
rescue Errno::ENOENT              # Erno ENOENT exception will raise
  return nil                      #Return Nil Many methods can return nil as a result, This happens when you ask for a value but that value is not available.
end

def save_content(title, content)                   #this method take 2 strings as parameters, the first holds the oage title and the another the holds the page content
  File.open("pages/#{title}.txt", "w") do |file|
    file.print(content)
  end
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

get "/new" do
  erb :new
end


get "/:title" do
  @title = params[:title]           #the path to make match he url parameter, parameters are marked with a colon followed by a parameter name
  @content = page_content(@title)
  erb :show
end

post "/create" do
    params.inspect  # {"title"=>"Hola", "content"=>"Hola mundo "}  es lo que imprime la pagina sin la linea
    save_content(params["title"], params["content"]) # guarda el nuevo archivo de texto
    redirect URI.escape("/#{params["title"]}")
 end


# get "/greet/:name" do
#   @name = params[:name]          # set the @name instance variable to equal the contents of the name URL parameter.
#   erb :name
# end
