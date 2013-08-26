module Refinery::Redirections
  class RoutesConstraint

    # A redirection must be found in the database
    def self.matches?(request)

      redirection = Refinery::Redirections::Redirection.from_url(request.fullpath).first

      if redirection.nil?
        Rails.logger.info "[Redirections] Redirection not found for: #{request.fullpath.inspect}"
      else
        Rails.logger.info "[Redirections] Redirection found from: #{request.fullpath.inspect} to #{redirection.to_url} with status #{redirection.status_code}"
      end

      !redirection.nil?

    end

  end
end
