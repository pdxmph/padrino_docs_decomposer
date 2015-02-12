DocsDecomposer::App.controllers :page do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index do
    render 'index'
  end

  get '/:id' do
    @page = Page.find(params[:id])
    render 'page'
  end
  
  get '/version/:version' do
    @pages = Page.where("version =?", params[:version])
    render 'index'
  end   

end
