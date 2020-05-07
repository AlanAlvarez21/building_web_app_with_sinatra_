#Multiple Routes in the Same App

require "sinatra"

set :bind, "0.0.0.0"

get "/apple" do
"<h1>here's juicy apple</h1> "
end


get "/banana" do
  "<h1>here's is a ripe of banana!!</h1> "

end

get "/carrot" do
  "<h1>here's is a crunchy carrot!!</h1> "

end
