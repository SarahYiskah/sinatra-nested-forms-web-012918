require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views => 'views/pirates'

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      # @pirate_name = params[:pirate][:name]
      # @pirate_weight = params[:pirate][:weight]
      # @pirate_height = params[:pirate][:height]
      @ship_1 = Ship.new(params[:pirate][:ships][0])
      @ship_2 = Ship.new(params[:pirate][:ships][1])
      # @ships = params[:pirate][:ships].each do |ship|
      #   // code here
      # end
      # @ship_1 = Ship.first
      # @ship_name_1 = params[:pirate][:ships][0][:name]
      # @ship_type_1 = params[:ships][0][type]
      # @ship_booty_1 = params[:ships][0][booty]
      # @ship_name_2 = params[:ships][1][name]
      # @ship_type_2 = params[:ships][1][type]
      # @ship_booty_2 = params[:ships][1][booty]
      erb :show
    end

  end
end
