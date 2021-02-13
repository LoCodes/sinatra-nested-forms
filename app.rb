require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    # GET '/'
    # returns a 200 status code
    # renders the instructions

    get '/' do 
      erb :'root'
    end 

#   GET '/new'
#     returns a 200 status code (FAILED - 3)
#     renders a new form element on the page (FAILED - 4)
#     renders the pirate input fields for name, weight, and height attributes on the page (FAILED - 5)
#     renders the first ship's input fields for the name, type, and booty attributes on the page (FAILED - 6)
#     renders the second ship's input field for the name, type, and booty attributes on the page (FAILED - 7)

    get '/new' do 
      erb :'pirates/new'
    end 


#   POST '/pirates'
#     returns a 200 status code (FAILED - 8)
#     displays the pirate information upon form submission (FAILED - 9)
#     displays the first ship's information upon form submission (FAILED - 10)
#     displays the second ship's information upon form submission (FAILED - 11)


    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])

      #ideal for one ship
      # params[:pirate][:ships].each do |details|
      #   Ship.new(details)
      # end
      # @ships = Ship.all

      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])

      erb :'pirates/show'

    end 
  end
end


# Filling in the Form
#   can fill in forms for a pirate and two ships

