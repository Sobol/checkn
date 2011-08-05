class ApplicationController < ActionController::Base
  protect_from_forgery
  layout "application"

  def css_class_prefix
    ''
  end

  def css_id_prefix
    ''
  end
end
