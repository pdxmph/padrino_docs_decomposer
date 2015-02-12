DocsDecomposer::App.controllers :element do
  
  get '/:checksum' do
    @elements = Element.where("checksum = ?", params[:checksum])
    @element = @elements.first
    render 'element'
  end

  get '/:checksum/flag' do
    @elements = Element.where("checksum = ?", params[:checksum])
    @elements.update_all(flagged: true)
  end

  get '/:checksum/unflag' do
    @elements = Element.where("checksum = ?", params[:checksum])
    @elements.update_all(flagged: false)
  end

    get '/:checksum/ignore' do
    @elements = Element.where("checksum = ?", params[:checksum])
    @elements.update_all(ignored: true)
  end

    get '/:checksum/unignore' do
    @elements = Element.where("checksum = ?", params[:checksum])
    @elements.update_all(ignored: false)
  end


end
