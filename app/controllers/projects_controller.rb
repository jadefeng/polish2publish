class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @user = current_user

    if @user.admin == true
      @projects = Project.all
    else 
      @projects = Project.where(author_id: @user.id) || []
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    if !user_signed_in?
      redirect_to new_user_registration_path
    else 
      @project = Project.new
    end
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.author_id = current_user.id
    @project.state_id = 0 #set default to new

    respond_to do |format|
      if @project.save
          format.html { 
            if user_signed_in?
              # redirect_to @project, notice: 'Project was successfully created.' 
              redirect_to projects_path, notice: 'Manuscript was successfully submitted. We will get back to you within the next 24 hrs to get the ball rolling!' 
            else 
              redirect_to new_user_registration_path
            end 
          }
          format.json { render :show, status: :created, location: @project }

      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :category_id, :genre_id, :state, :photo, :url, :editor_id, :author_id, :page_no, :word_count, :icon, :file)
    end
end
