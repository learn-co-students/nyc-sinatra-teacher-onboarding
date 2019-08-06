class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    @figures = Figure.all
    binding.pry
    erb :'/figures/index'
  end
  
  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do 
    binding.pry
    @figure = Figure.create(name: params[:figure][:name])
    if params[:figure][:title_ids]
      params[:figure][:title_ids].each { |title_id| @figure.titles << Title.find(title_id) }
    else  
      @figure.titles << Title.create(name: params[:title][:name])
    end
    if params[:figure][:landmark_ids]
      params[:figure][:landmark_ids].each { |landmark_id| @figure.landmarks << Landmark.find(landmark_id) }
    else  
      @figure.landmarks << Landmark.create(name: params[:landmark][:name], year_completed: params[:landmark][:year])
    end
    binding.pry
    redirect to "figures/#{@figure.id}"
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'/figures/show'
  end
end
