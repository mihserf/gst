# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def admin?
    session[:admin]
  end

  def menu_countries
    menu_countries_items=""
    countries = Country.find(:all, :order => :num_order)
    for country in countries do
	    menu_countries_items<< "<li>"
            menu_countries_items<< link_to(country.name, lang_country_path(lang_id(@lang),country.ident_name))
            menu_countries_items<< "</li>"
    end
    "<ul>"+menu_countries_items+"</ul>" unless menu_countries_items==""
  end

  def lang_id(lang)
    case lang.to_s
      when 'en-*'
        return "en"
      when 'ru-RU'
        return "ru"
      when 'ua-UA'
        return "ua"
      else return ""
     end
  end

  def countries_list(country)
    countries = Country.find(:all)
    render :partial => "shared/countries_list", :locals => {:countries => countries, :current_country => country}
  end

  def items_list(obj, attr_name)
    attr_name = (attr_name.nil?)?   "name" : attr_name[:attr_name]
    if obj.class==Array
      items = obj
      item = nil
    else
      items = obj.class.find(:all)
      item = obj
    end
    render :partial => "shared/items_list", :locals => {:items => items, :current_item => item, :attr_name => attr_name}
  end

  def tabs(*args)
    options=args.extract_options!
    i=0
    ul=""
    li=""
    
    options = options.to_a.sort_by{|k| k.to_s}
    options.each do |key,val|
      i+=1
      li<<"<li id='but#{i}' class='but but#{i}'><a href='#page-#{i}' id='link_to_page_#{i}'><span>#{val}</span></a></li>"
    end
     ul="<ul>"+li+"</ul>"
     render :partial => "shared/tabs", :locals => {:ul => ul}
  end

  def lang_choice
    #langs = obj.class.find(:all, :select => :lang, :conditions =>{:ident_name => obj.ident_name}).collect(&:lang) rescue []  # if obj hasn't any of this attributes then rescue with empty array
    langs = Localedb.find(:all).collect(&:short);
    render  :partial  =>  "shared/lang_choice", :locals => {:langs => langs}
  end

  def ident_choice(obj)
     render :partial => "shared/ident_choice", :locals => {:obj => obj, :obj_name => obj.class.to_s.tableize.singularize}
  end

  def add_link(name, container)
  link_to_function name do |page|
    page.insert_html :bottom, container.to_sym, :partial => container.singularize, :object => container.classify.constantize.new 
  end
end

end
