class MembersController < ApplicationController
  before_filter :admin_required, :except => [:show]

  def index
    @members = Member.find(:all, :order => "last_name")
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @members }
    end
  end

  def show
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    params[:member][:status_ids] ||= []
    @member.attributes = params[:member]
    
    unless params[:member_photo].nil?
      if @member_photo=@member.member_photo
        @member_photo.update_attributes(params[:member_photo])
      else
        @member.create_member_photo(params[:member_photo])
      end
    end

    respond_to do |format|
      if @member.save!
        flash[:notice] = 'Член изменён.'
        format.html { redirect_to members_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    @member.build_member_photo(params[:member_photo])  unless params[:member_photo].nil?
  
    respond_to do |format|
      if @member.save
        flash[:notice] = 'Член добавлен.'
        format.html { redirect_to members_path }
        format.xml  { render :xml => @member, :status => :created, :location => @member }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @member.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    respond_to do |format|
      format.html { redirect_to(members_url) }
      format.xml  { head :ok }
    end
  end

end
