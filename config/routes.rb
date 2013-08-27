Refinery::Core::Engine.routes.prepend do

  match "/*path" => 'redirections/redirections#redirect', constraints: Refinery::Redirections::RoutesConstraint


  namespace :redirections, path: '' do
    namespace :admin, :path => 'refinery' do
      resources :redirections, :except => :show
    end
  end

end
