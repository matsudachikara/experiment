class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from Exception, :with => :render_error

    private
    def render_error
      e = $!
      respond_to do |format|
        format.json {render :json => e}
      end
    end
end
