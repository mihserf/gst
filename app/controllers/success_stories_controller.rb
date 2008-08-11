class SuccessStoriesController < ApplicationController
  def index
    @success_stories = SuccessStory.find(:all, :order => "lang,last_name")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @success_stories }
    end
  end

  def show
  end

  def edit
    @success_story = SuccessStory.find(params[:id])
  end

  def update
    @success_story = SuccessStory.find(params[:id])
    params[:success_story][:status_ids] ||= []
    @success_story.attributes = params[:success_story]
    params[:success_story_photo][:success_story_ident_num] = @success_story.ident_num unless params[:success_story_photo].nil?
    @success_story.build_success_story_photo(params[:success_story_photo])
    respond_to do |format|
      if @success_story.save!
        flash[:notice] = 'Член изменён.'
        format.html { redirect_to success_stories_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  def new
    @success_story = SuccessStory.new
  end

  def create
    @success_story = SuccessStory.new(params[:success_story])
    @success_story.assign_idents
    params[:success_story_photo][:success_story_ident_num] = @success_story.ident_num unless params[:success_story_photo].nil?
    @success_story.build_success_story_photo(params[:success_story_photo])

    respond_to do |format|
      if @success_story.save
        flash[:notice] = 'Член добавлен.'
        format.html { redirect_to success_stories_path }
        format.xml  { render :xml => @success_story, :status => :created, :location => @success_story }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @success_story.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @success_story = SuccessStory.find(params[:id])
    @success_story.destroy
    respond_to do |format|
      format.html { redirect_to(success_stories_url) }
      format.xml  { head :ok }
    end
  end

end
