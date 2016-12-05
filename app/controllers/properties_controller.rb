class PropertiesController < ApplicationController
  def index
    @properties = Property.all

    render("properties/index.html.erb")
  end

  def show
    @property = Property.find(params[:id])

    render("properties/show.html.erb")
  end

  def new
    @property = Property.new

    render("properties/new.html.erb")
  end

  def create
    @property = Property.new

    @property.caption = params[:caption]
    @property.image = params[:image]
    @property.houseorapartment = params[:houseorapartment]
    @property.numberofbedroom = params[:numberofbedroom]
    @property.numberofbathroom = params[:numberofbathroom]
    @property.city = params[:city]
    @property.neighborhood = params[:neighborhood]
    @property.policy = params[:policy]
    @property.price = params[:price]
    @property.user_id = params[:user_id]

    save_status = @property.save

    if save_status == true
      redirect_to("/properties/#{@property.id}", :notice => "Property created successfully.")
    else
      render("properties/new.html.erb")
    end
  end

  def edit
    @property = Property.find(params[:id])

    render("properties/edit.html.erb")
  end

  def update
    @property = Property.find(params[:id])

    @property.caption = params[:caption]
    @property.image = params[:image]
    @property.houseorapartment = params[:houseorapartment]
    @property.numberofbedroom = params[:numberofbedroom]
    @property.numberofbathroom = params[:numberofbathroom]
    @property.city = params[:city]
    @property.neighborhood = params[:neighborhood]
    @property.policy = params[:policy]
    @property.price = params[:price]
    @property.user_id = params[:user_id]

    save_status = @property.save

    if save_status == true
      redirect_to("/properties/#{@property.id}", :notice => "Property updated successfully.")
    else
      render("properties/edit.html.erb")
    end
  end

  def destroy
    @property = Property.find(params[:id])

    @property.destroy

    if URI(request.referer).path == "/properties/#{@property.id}"
      redirect_to("/", :notice => "Property deleted.")
    else
      redirect_to(:back, :notice => "Property deleted.")
    end
  end
end
