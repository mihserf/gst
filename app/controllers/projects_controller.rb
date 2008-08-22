class ProjectsController < ApplicationController
  def index
    @projects = Project.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @members }
    end
  end

  def show
    @project = Project.find_by_ident_name(params[:id]) || Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.attributes = params[:project]

    managing_photos

    respond_to do |format|
      if @project.save!
        flash[:notice] = 'Проект изменён.'
        format.html { redirect_to projects_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    managing_photos

    respond_to do |format|
      if @project.save
        flash[:notice] = 'Проект добавлен.'
        format.html { redirect_to projects_path }
        format.xml  { render :xml => @project, :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    respond_to do |format|
      format.html { redirect_to(projects_url) }
      format.xml  { head :ok }
    end
  end

  def managing_photos
    params[:photos] ||= []
    params[:photos].each do |photo|
      @project.project_photos.build(photo) unless photo[:uploaded_data] == ""
    end

    params[:existing_photos] ||= []
    params[:existing_photos].each_value do |photo|
      @photo = ProjectPhoto.find(photo[:id])
      @photo.update_attributes(photo) unless photo[:uploaded_data] == ""
      #OPTIMIZE: improve update_attribute
      @photo.update_attribute(:main,photo[:main])
      @photo.update_attribute(:description,photo[:description])
    end unless params[:existing_photos].empty?
  end

end
