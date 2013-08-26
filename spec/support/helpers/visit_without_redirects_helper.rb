# Capybara 2.0 has a method to disable automatic redirections
# Since we are using Capybara 1.1.4 we need to include and use
# this module by @reagent in https://github.com/jnicklas/capybara/pull/560#issuecomment-3049412
module VisitWithoutRedirectsHelper
  def redirected_url
    page.response_headers["Location"]
  end

  def visit_without_redirects(url)
    page.driver.browser.reset_host!
    page.driver.browser.process(:get, url, {})
  end
end
