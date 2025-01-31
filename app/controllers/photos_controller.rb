class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all.order({ :created_at => :desc })

    render({ :template => "photo_templates/index" })
  end
  def show
    a_photo = params.fetch("id")
    @the_photo = Photo.all.where({ :id => a_photo }).at(0)
    render({ :template => "photo_templates/show" })
  end

end
