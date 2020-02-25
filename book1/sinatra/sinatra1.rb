require "sinatra"

before do
    @cars = [
        {:model => "BMW", :year => "2018", :color => "White"},
        {:model => "Toyota",:year => "2019", :color => "Silver"},
        {:model => "AUDI", :year => "2015", :color => "Black"}
    ]
end

get '/' do
    erb %{
        <% @cars.each do |car| %>
            <p>Model: <%= car[:model] %>, Color: <%= car[:color]%>, Year: <%= car[:year] %></p>
        <% end %>
    }
end

get '/date' do
    Time.now.to_s
end

get '/form' do
    %Q{
    <form method="post">
        Enter your name: 
        <input type="text" name="name" />
        <input type="submit" value="Submit" />
    </form>
    }
end

post '/form' do 
    "Name is: " + params[:name]
end

get '/sum/:a/:b' do
    "Sum is: " + (params[:a].to_i + params[:b].to_i).to_s
end


__END__
@@ layout
  <html>
  <head><title>My App</title></head>
  <body>
  <h1>My App</h1>
  <%= yield %>
  </body>
  </html>

@@ index
  <% @people.each do |person| %>
  <p><%= person[:name] %> is <%= person[:age] %> years old</p>
  <% end %>