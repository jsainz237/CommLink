class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy, :like, :unlike]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all.order(:number)
  end

  def upvote
    if user_signed_in?
      @course = Course.find(params[:id])
      @course.upvote_by current_user
      redirect_back fallback_location: root_path
    else
      redirect_to new_user_session_path, alert: "You'll need to sign in to vote!"
    end
  end

  def downvote
    if user_signed_in?

      @course = Course.find(params[:id])
      @course.downvote_by current_user
      redirect_back fallback_location: root_path
    else
      redirect_to new_user_session_path, alert: "You'll need to sign in to vote!"
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
    @ratings = @course.ratings
  end

  # GET /courses/new
  def new
    @course = Course.new @categories = Category.all.map{|c| [ c.name, c.id ] }
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses
  # POST /courses.json
  def create
    @course = Course.new(course_params)
    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :rating, :number, :description, :shorty, :categoryName, :Category, {instructor_ids: []})
    end
end
