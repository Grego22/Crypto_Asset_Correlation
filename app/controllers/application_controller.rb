class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhiteList
  include SetSource
  include CurrentUserConcern

  def current_user
    super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
  end

  before_action :set_page_defaults
  def set_page_defaults
    @page_title = "Risk On vs Risk Off"
    @seo_keywords = "Greg Garville Asset"
  end


end
