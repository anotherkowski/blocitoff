class PagesController < ApplicationController
  # skip_before_action :require_login
  skip_before_action :authenticate_user!

  def home
  end

  def about
  end
end
