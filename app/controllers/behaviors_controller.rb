class BehaviorsController < ApplicationController
  # GET /behaviors
  # GET /behaviors.xml
  def index
    @behaviors = Behavior.paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @behaviors }
    end
  end

  # GET /behaviors/1
  # GET /behaviors/1.xml
  def show
    @behavior = Behavior.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @behavior }
    end
  end

  # GET /behaviors/new
  # GET /behaviors/new.xml
  def new
    @behavior = Behavior.new
#    @behavior.skill_id = Skill.find(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @behavior }
    end
  end

  # GET /behaviors/1/edit
  def edit
    @behavior = Behavior.find(params[:id])
  end

  # POST /behaviors
  # POST /behaviors.xml
  def create
    @behavior = Behavior.new(params[:behavior])

    respond_to do |format|
      if @behavior.save
        format.html { redirect_to(@behavior, :notice => 'Behavior was successfully created.') }
        format.xml  { render :xml => @behavior, :status => :created, :location => @behavior }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @behavior.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /behaviors/1
  # PUT /behaviors/1.xml
  def update
    @behavior = Behavior.find(params[:id])

    respond_to do |format|
      if @behavior.update_attributes(params[:behavior])
        format.html { redirect_to(@behavior, :notice => 'Behavior was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @behavior.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /behaviors/1
  # DELETE /behaviors/1.xml
  def destroy
    @behavior = Behavior.find(params[:id])
    @behavior.destroy

    respond_to do |format|
      format.html { redirect_to(behaviors_url) }
      format.xml  { head :ok }
    end
  end
end
