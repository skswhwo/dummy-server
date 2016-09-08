class AdvertisementsController < ApplicationController

  has_scope :channel,             only: :index
  has_scope :audience_country,    only: :index
  has_scope :audience_language,   only: :index
  has_scope :expose_view,         only: :index
  has_scope :audience_roles,      only: :index
  has_scope :audience_grade,      only: :index
  
  
  def index
    
    @advertisements = apply_scopes(Advertisement).all

    render json: @advertisements
  end
end
