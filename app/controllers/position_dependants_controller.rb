class PositionDependantsController < ApplicationController
  # GET /position_dependants
  # GET /position_dependants.xml
  def index
    @position_dependants = PositionDependant.paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @position_dependants }
    end
  end

  # GET /position_dependants/1
  # GET /position_dependants/1.xml
  def show
    @position_dependant = PositionDependant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @position_dependant }
    end
  end

  # GET /position_dependants/new
  # GET /position_dependants/new.xml
  def new
    @position_dependant = PositionDependant.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @position_dependant }
    end
  end

  # GET /position_dependants/1/edit
  def edit
    @position_dependant = PositionDependant.find(params[:id])
  end

  # POST /position_dependants
  # POST /position_dependants.xml
  def create
    @position_dependant = PositionDependant.new(params[:position_dependant])

    respond_to do |format|
      if @position_dependant.save
        format.html { redirect_to(@position_dependant, :notice => 'Position dependant was successfully created.') }
        format.xml  { render :xml => @position_dependant, :status => :created, :location => @position_dependant }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @position_dependant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /position_dependants/1
  # PUT /position_dependants/1.xml
  def update
    @position_dependant = PositionDependant.find(params[:id])

    respond_to do |format|
      if @position_dependant.update_attributes(params[:position_dependant])
        format.html { redirect_to(@position_dependant, :notice => 'Position dependant was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @position_dependant.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /position_dependants/1
  # DELETE /position_dependants/1.xml
  def destroy
    @position_dependant = PositionDependant.find(params[:id])
    @position_dependant.destroy

    respond_to do |format|
      format.html { redirect_to(position_dependants_url) }
      format.xml  { head :ok }
    end
  end
end
