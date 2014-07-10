class SegmentTypesController < ApplicationController
#load_and_authorize_resource
  # GET /segment_types
  # GET /segment_types.json
  def index
    @segment_types = SegmentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @segment_types }
    end
  end

  # GET /segment_types/1
  # GET /segment_types/1.json
  def show
    @segment_type = SegmentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @segment_type }
    end
  end

  # GET /segment_types/new
  # GET /segment_types/new.json
  def new
    @segment_type = SegmentType.new
    @segment_type.segment_names.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @segment_type }
    end
  end

  # GET /segment_types/1/edit
  def edit
    @segment_type = SegmentType.find(params[:id])
  end

  # POST /segment_types
  # POST /segment_types.json
  def create
    @segment_type = SegmentType.new(params[:segment_type])

    respond_to do |format|
      if @segment_type.save
        format.html { redirect_to @segment_type, notice: 'Segment type was successfully created.' }
        format.json { render json: @segment_type, status: :created, location: @segment_type }
      else
        format.html { render action: "new" }
        format.json { render json: @segment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /segment_types/1
  # PUT /segment_types/1.json
  def update
    @segment_type = SegmentType.find(params[:id])

    respond_to do |format|
      if @segment_type.update_attributes(params[:segment_type])
        format.html { redirect_to @segment_type, notice: 'Segment type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @segment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segment_types/1
  # DELETE /segment_types/1.json
  def destroy
    @segment_type = SegmentType.find(params[:id])
    @segment_type.destroy

    respond_to do |format|
      format.html { redirect_to segment_types_url }
      format.json { head :no_content }
    end
  end
end
