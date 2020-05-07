#simple deplaoy of sinatra app

require "sinatra"

set :bind, "0.0.0.0"

get "/apple" do
"<h1>here's juicy apple juice</h1> "
end
