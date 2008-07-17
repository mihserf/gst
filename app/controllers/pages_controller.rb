class PagesController < ApplicationController
  def index
    @pages=Page.find(:all)
    render(:layout=>"admin")
  end

  def new
    @page=Page.new
  end

  def create
    @page=Page.new(params[:page])
    if  @page.save!
      flash[:notice]="Страница создана. Добавте изменения в файл /config/routes.rb"
    end
  end

  def edit
    @page=Page.find(params[:id])
    render(:layout=>"admin")
  end


  def update
    @page=Page.find(params[:id])
    if  @page.update_attributes(params[:page])
      flash[:notice]="страница обновлена"
      redirect_to pages_path
    end
  end

  def home
    @page=Page.find_by_ident_name("home")
  end
end
