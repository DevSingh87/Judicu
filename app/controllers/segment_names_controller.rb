class SegmentNamesController < ApplicationController
load_and_authorize_resource 
  # GET /segment_names
  # GET /segment_names.json
  def index
    @segment_names = SegmentName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @segment_names }
    end
  end

  # GET /segment_names/1
  # GET /segment_names/1.json
  def show
    @segment_name = SegmentName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @segment_name }
    end
  end

  # GET /segment_names/new
  # GET /segment_names/new.json
  def new
    @segment_name = SegmentName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @segment_name }
    end
  end

  # GET /segment_names/1/edit
  def edit
    @segment_name = SegmentName.find(params[:id])
  end

  # POST /segment_names
  # POST /segment_names.json
  def create
    @segment_name = SegmentName.new(params[:segment_name])

    respond_to do |format|
      if @segment_name.save
        format.html { redirect_to @segment_name, notice: 'Segment name was successfully created.' }
        format.json { render json: @segment_name, status: :created, location: @segment_name }
      else
        format.html { render action: "new" }
        format.json { render json: @segment_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /segment_names/1
  # PUT /segment_names/1.json
  def update
    @segment_name = SegmentName.find(params[:id])

    respond_to do |format|
      if @segment_name.update_attributes(params[:segment_name])
        format.html { redirect_to @segment_name, notice: 'Segment name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @segment_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segment_names/1
  # DELETE /segment_names/1.json
  def destroy
    @segment_name = SegmentName.find(params[:id])
    @segment_name.destroy

    respond_to do |format|
      format.html { redirect_to segment_names_url }
      format.json { head :no_content }
    end
  end
end
