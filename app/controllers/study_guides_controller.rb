class StudyGuidesController < ApplicationController
  before_action :set_study_guide, only: [:show, :update, :destroy]

  # GET /study_guides
  def index
    @study_guides = current_user.study_guides #this will be so we can add auth later

    render json: StudyGuideSerializer.new(@study_guides).serializable_hash[:data].map{|hash| hash[:attributes]}
  end

  # GET /study_guides/1
  def show
    render json: @study_guide
  end

  # POST /study_guides
  def create
    #this is gonna assign user id to the current user's id
    @study_guide = current_user.study_guides.build(study_guide_params)

    if @study_guide.save
      render json: @study_guide, status: :created, location: @study_guide
    else
      render json: @study_guide.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /study_guides/1
  def update
    if @study_guide.update(study_guide_params)
      render json: @study_guide
    else
      render json: @study_guide.errors, status: :unprocessable_entity
    end
  end

  # DELETE /study_guides/1
  def destroy
    @study_guide.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_guide
      @study_guide = StudyGuide.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def study_guide_params
      params.require(:study_guide).permit(:name)
    end
end
