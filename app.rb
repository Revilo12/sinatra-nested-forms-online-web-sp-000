require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      p_params = params[:pirate]
      s1_params = params[:pirate][:ship][0]
      s2_params = params[:pirate][:ship][1]
      @pirate = Pirate.new(p_params[:name],p_params[:height],p_params[:weight])
      @ship_1 = Ship.new_from_hash(s1_params)
      @ship_2 = Ship.new_from_hash(s2_params)
      erb :show
    end
  end
end
