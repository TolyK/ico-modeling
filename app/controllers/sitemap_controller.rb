class SitemapController < ApplicationController
  SHOW_CACHE_EXPIRATION = 1.hour
  layout false
  
  def show
    @icos = Ico.all
  end
end
