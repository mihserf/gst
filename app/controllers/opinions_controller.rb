class OpinionsController < ApplicationController
  before_filter :admin_required, :except => [:show]
  before_filter :get_member, :except => [:index, :destroy]
  
  def new
    @opinion = Opinion.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @city }
    end
  end

  def create
    params[:opinion][:ident_name]=@member.ident_name+'_opinion'
    @opinion = Opinion.new(params[:opinion])
    
    @member.opinion = @opinion

    respond_to do |format|
      if @member.save
        flash[:notice] = 'Отзыв добавлен.'
        format.html { redirect_to members_path }
        format.xml  { render :xml => @opinion, :status => :created, :location => @opinion }
       else
        format.html { render :action => "new" }
        format.xml  { render :xml => @opinion.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @opinion = @member.opinion
  end

  def update
    @opinion = @member.opinion
    params[:opinion][:ident_name]=@member.ident_name+'_opinion'
    @opinion.attributes = params[:opinion]

    respond_to do |format|
      if @opinion.save!
        flash[:notice] = 'Отзыв изменён.'
        format.html { redirect_to members_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @opinion.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
  end

  def destroy
    @opinion = Opinion.find(params[:id])
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to(countries_url) }
      format.xml  { head :ok }
    end
  end

  def get_member
    @member = Member.find(params[:member_id])
  end
  
end
