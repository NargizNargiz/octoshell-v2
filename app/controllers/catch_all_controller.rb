class CatchAllController < ApplicationController
  protect_from_forgery except: :index
  def index
    logger.warn "Faked #{params.inspect}"
    case params[:ext]
    when 'js'
      render text: "\n", content_type: 'text/javascript'
    when 'css'
      render text: "\n", content_type: 'text/css'
    else
      render test: 'Ooops! Page not found!', status: :not_found
    end
  end
end
