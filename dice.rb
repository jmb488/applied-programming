require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    @die_1 = rand(1..6)
    @die_2 = rand(1..6)
    view "dice"
    #"<p>First die: #{die_1}</p>
    #<p>Second die: #{die_2}</p>
    #<p>Total roll: #{die_1 + die_2}</p>"
 
  
end

#get "/tacos" do
#    "Yes please"
#end

