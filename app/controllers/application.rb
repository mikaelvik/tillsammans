# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  layout "tillsammans"
  helper :all # include all helpers, all the time
  include AuthenticatedSystem
  filter_parameter_logging :password
  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  # protect_from_forgery # :secret => 'fd657d308d3f3fabdb0be37587c173c6'
end
