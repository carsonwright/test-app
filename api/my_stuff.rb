class App < Grape::API
  resource :api do
    format :json
    
    get "/my_stuff/" do
      {
        text: "its it"  
      }
    end
  end
end