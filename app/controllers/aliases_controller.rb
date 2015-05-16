class AliasesController < ApplicationController
  def index
    @aliases = Alias.all
    respond_to do |format|
      format.html { }
      format.json { render :json => @aliases }
    end
  end

  # GET /aliases.json
  def list
    @aliases = Alias.where(:name => params[:id])
    respond_to do |format|
      format.html { }
      format.json { render :json => @aliases }
    end
  end
end
