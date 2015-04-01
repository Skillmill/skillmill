class DesignsController < ApplicationController
  before_action :set_design, only: [:show, :edit, :update, :destroy]
  # before_action :set_project
  before_action :authenticate_user!

  # GET /ative_posts
  def active_posts
    # @project = Project.where(customer: current_user).find(params[:project_id])
               # current_user.projects.find(.....)
    @designs = Design.all.where(customer: current_user).order("created_at DESC")
  end

  # GET /submitted_designs
  def submitted_designs
    # binding.pry
    # @project = Project.where(customer: current_user).find(params[:project_id])
    @designs = Design.all.where(designer: current_user).order("created_at DESC")
  end

  # GET /designs
  # GET /designs.json
  def index
    @designs = Design.all
  end

  # GET /designs/1
  # GET /designs/1.json
  def show
    @project = @design.project_id
    @reviews = Review.where(design_id: @design.id).order("created_at DESC")
    if @reviews.blank?
      @avg_rating = 0
    else
      @avg_rating = @reviews.average(:rating).round(2)
    end
  end

  # GET /designs/new
  def new
    @design = Design.new
    @project = Project.find(params[:project_id])
  end

  # GET /designs/1/edit
  def edit
  end

  # POST /designs
  # POST /designs.json
  def create
    @design = Design.new(design_params)
    @project = Project.find(params[:project_id])
    @customer = @project.user
    
    @design.project_id = @project.id
    @design.designer_id = current_user.id
    @design.customer_id = @customer.id

    respond_to do |format|
      if @design.save
        format.html { redirect_to submitted_designs_path, notice: 'Design was successfully created.' }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { render :new }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designs/1
  # PATCH/PUT /designs/1.json
  def update
    respond_to do |format|
      if @design.update(design_params)
        format.html { redirect_to submitted_designs_path, notice: 'Design was successfully updated.' }
        format.json { render :show, status: :ok, location: @design }
      else
        format.html { render :edit }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designs/1
  # DELETE /designs/1.json
  def destroy
    @design.destroy
    respond_to do |format|
      format.html { redirect_to designs_url, notice: 'Design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_design
      # @design = @project.designs.find(params[:id])
      @design = Design.find(params[:id])
    end

    # def set_project
    #   # binding.pry
    #   # @project = Project.find(params[:project_id])
    #   @project = @design.project_id
    # end


    # Never trust parameters from the scary internet, only allow the white list through.
    def design_params
      params.require(:design).permit(:description, :image, :thirdpartycontent, :project_id)
    end
end
