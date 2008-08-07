class MembersController < ApplicationController
  def index
    @members = Member.find(:all, :order => "lang,last_name")
    
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
    respond_to do |format|
      if @member.update_attributes(params[:member])
        @member.statuses<<Status.find(params[:status][:id])
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
        
    respond_to do |format|
      if @member.save
        @member.statuses<<Status.find(params[:status][:id])
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
