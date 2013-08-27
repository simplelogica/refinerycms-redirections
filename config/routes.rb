Refinery::Core::Engine.routes.prepend do

  if Refinery::Redirections.enable_route_redirection
    match "/*path" => 'redirections/redirections#redirect', constraints: Refinery::Redirections::RoutesConstraint
  end

  namespace :redirections, path: '' do
    namespace :admin, :path => 'refinery' do
      resources :redirections, :except => :show
    end
  end

end
