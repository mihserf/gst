class CountriesController < ApplicationController
  before_filter :admin_required, :except => [:show, :index]
  # GET /countries
  # GET /countries.xml
  def index
    @countries = Country.find(:all, :order => :ident_name)

    respond_to do |format|
      format.html { render :template => "countries/list" unless admin?}
      format.xml  { render :xml => @countries }
    end
  end

  # GET /countries/1
  # GET /countries/1.xml
  def show
    @country = Country.find_by_ident_name(params[:id]) || Country.find(params[:id])
    @cities = @country.cities.find(:all, :include => :city_coord)
    #@countries = Country.find_all_by_lang(@country.lang)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @country }
    end
  end

  # GET /countries/new
  # GET /countries/new.xml
  def new
    @country = Country.new
    Localedb.find(:all).each do |loc|
      (@translations ||=[]) << @country.translations.build(:localedb_id =>loc.id)
    end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @country }
    end
  end

  # GET /countries/1/edit
  def edit
    @country = Country.find(params[:id])
  end

  # POST /countries
  # POST /countries.xml
  def create
    @country = Country.new(params[:country])
    
    @country.build_map(params[:map]) unless params[:map].nil?

    respond_to do |format|
      if @country.save
        flash[:notice] = 'Country was successfully created.'
        format.html { redirect_to countries_path }
        format.xml  { render :xml => @country, :status => :created, :location => @country }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @country.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /countries/1
  # PUT /countries/1.xml
  def update
    @country = Country.find(params[:id])
    @country.attributes = params[:country]

    unless params[:map].nil?
      if @map=@country.map
        @map.update_attributes(params[:map])
      else
        @country.create_map(params[:map])
      end
    end

    respond_to do |format|
      if @country.save!
        flash[:notice] = 'Country was successfully updated.'
        format.html { redirect_to(@country) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @country.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.xml
  def destroy
    @country = Country.find(params[:id])
    @country.destroy

    respond_to do |format|
      format.html { redirect_to(countries_url) }
      format.xml  { head :ok }
    end
  end
end
