class Refinery::Redirections::RedirectionsController < ActionController::Base

  def redirect
    redirection = Refinery::Redirections::Redirection.from_url(request.fullpath).first
      redirect_to redirection.to_url, status: redirection.status_code unless redirection.nil?
  end

end
