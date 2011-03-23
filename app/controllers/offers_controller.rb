class OffersController < ApplicationController

  layout 'offers'

  caches_page :trial1, :trial2, :trial3, :trial4, :trial5


end
