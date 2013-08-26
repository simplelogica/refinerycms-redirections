Refinery::Core::Engine.routes.prepend do

  match "/*path" => 'redirections/redirections#redirect', constraints: Refinery::Redirections::RoutesConstraint

end
