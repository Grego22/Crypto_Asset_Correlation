class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  before_action :set_page_defaults
  def set_page_defaults
    @page_title = "Risk On vs Risk Off"
    @seo_keywords "Greg Garville Asset"
  end


end
