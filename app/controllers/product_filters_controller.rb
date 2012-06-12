
class ProductFiltersController < ApplicationController
  # GET /product_filters
  # GET /product_filters.json
  def index
    @product_filters = ProductFilter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_filters }
    end
  end

  # GET /product_filters/1
  # GET /product_filters/1.json
  def show
    @product_filter = ProductFilter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_filter }
    end
  end

  # GET /product_filters/new
  # GET /product_filters/new.json
  def new
    @product_filter = ProductFilter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_filter }
    end
  end

  # GET /product_filters/1/edit
  def edit
    @product_filter = ProductFilter.find(params[:id])
  end

  # POST /product_filters
  # POST /product_filters.json
  def create
    @product_filter = ProductFilter.new(params[:product_filter])

    respond_to do |format|
      if @product_filter.save
        format.html { redirect_to @product_filter, notice: 'Product filter was successfully created.' }
        format.json { render json: @product_filter, status: :created, location: @product_filter }
      else
        format.html { render action: "new" }
        format.json { render json: @product_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_filters/1
  # PUT /product_filters/1.json
  def update
    @product_filter = ProductFilter.find(params[:id])

    respond_to do |format|
      if @product_filter.update_attributes(params[:product_filter])
        format.html { redirect_to @product_filter, notice: 'Product filter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_filter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_filters/1
  # DELETE /product_filters/1.json
  def destroy
    @product_filter = ProductFilter.find(params[:id])
    @product_filter.destroy

    respond_to do |format|
      format.html { redirect_to product_filters_url }
      format.json { head :no_content }
    end
  end
end
