class MaintenancesController < ApplicationController
  def index
    @maintenances = Maintenance.all

    render("maintenances/index.html.erb")
  end

  def show
    @maintenance = Maintenance.find(params[:id])

    render("maintenances/show.html.erb")
  end

  def new
    @maintenance = Maintenance.new

    render("maintenances/new.html.erb")
  end

  def create
    @maintenance = Maintenance.new

    @maintenance.property_id = params[:property_id]
    @maintenance.user_id = params[:user_id]
    @maintenance.body = params[:body]

    save_status = @maintenance.save

    if save_status == true
      redirect_to("/maintenances/#{@maintenance.id}", :notice => "Maintenance created successfully.")
    else
      render("maintenances/new.html.erb")
    end
  end

  def edit
    @maintenance = Maintenance.find(params[:id])

    render("maintenances/edit.html.erb")
  end

  def update
    @maintenance = Maintenance.find(params[:id])

    @maintenance.property_id = params[:property_id]
    @maintenance.user_id = params[:user_id]
    @maintenance.body = params[:body]

    save_status = @maintenance.save

    if save_status == true
      redirect_to("/maintenances/#{@maintenance.id}", :notice => "Maintenance updated successfully.")
    else
      render("maintenances/edit.html.erb")
    end
  end

  def destroy
    @maintenance = Maintenance.find(params[:id])

    @maintenance.destroy

    if URI(request.referer).path == "/maintenances/#{@maintenance.id}"
      redirect_to("/", :notice => "Maintenance deleted.")
    else
      redirect_to(:back, :notice => "Maintenance deleted.")
    end
  end
end
