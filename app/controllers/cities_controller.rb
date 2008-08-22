class CitiesController < ApplicationController
  before_filter :admin_required, :except => [:show]
  before_filter :get_country, :exept => [:update, :destroy]
  # GET /cities
  # GET /cities.xml
  def index
    @cities = City.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cities }
      format.js  { render  :json => @cities.to_json }
    end
  end

  # GET /cities/1
  # GET /cities/1.xml
  def show
    @city = City.find_by_ident_name(params[:id]) || City.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @city }
    end
  end

  # GET /cities/new
  # GET /cities/new.xml
  def new
    @city = City.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @city }
    end
  end

  # GET /cities/1/edit
  def edit
    @city = City.find(params[:id])
  end

  # POST /cities
  # POST /cities.xml
  def create
    @city = City.new(params[:city])
    @city.country_id=@country.id
    @city.build_city_coord(params[:city_coord]) unless params[:city_coord].nil?
    managing_photos

    respond_to do |format|
      if @city.save!
        flash[:notice] = 'Город добавлен.'
        format.html { redirect_to countries_path }
        format.xml  { render :xml => @city, :status => :created, :location => @city }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.xml
  def update
    @city = City.find(params[:id])
    @city.attributes=params[:city]
    #unless params[:city_coord].nil?
    #@city_coord=@city.city_coord || @city.create_city_coord(params[:city_coord])
    #@city_coord.update_attributes(params[:city_coord])
    #end
    unless params[:city_coord].nil?
      if @city_coord=@city.city_coord
        @city_coord.update_attributes(params[:city_coord])
      else
        @city.create_city_coord(params[:city_coord])
      end
    end

    managing_photos

    respond_to do |format|
      if @city.save!
        flash[:notice] = 'Город изменён.'
        format.html { redirect_to countries_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.xml
  def destroy
    @city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to(countries_url) }
      format.xml  { head :ok }
    end
  end

  def managing_photos
    params[:photos] ||= []
    params[:photos].each do |photo|
      @city.city_photos.build(photo) unless photo[:uploaded_data] == ""
    end

    params[:existing_photos] ||= []
    params[:existing_photos].each_value do |photo|
      @photo = CityPhoto.find(photo[:id])
      @photo.update_attributes(photo) unless photo[:uploaded_data] == ""
      @photo.update_attribute(:main,photo[:main])
    end unless params[:existing_photos].empty?
  end

  def get_country
    @country = Country.find(params[:country_id])
  end


end
