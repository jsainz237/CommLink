class Courses::RatingsController < ApplicationController
  	before_action :set_rating, only: [:show, :edit, :update, :destroy]
	before_action :set_course, only: [:show, :new, :edit, :create, :update, :destroy]

  # GET /ratings
  # GET /ratings.json
  def index
    @ratings = Rating.all
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
  end

  # GET /ratings/new
  def new
    @rating = Rating.new
  end

  # GET /ratings/1/edit
  def edit
  end

  # POST /ratings
  # POST /ratings.json
  def create
     @rating = Rating.new(rating_params)
     @rating.course_id = @course.id
	
    respond_to do |format|
      if @rating.save
        format.html { redirect_to course_url(@rating.course_id), notice: 'Rating was successfully created.' }
        format.json { render :show, status: :created, location: course_url(@rating.course_id) }
      else
        format.html { render :new }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update
    respond_to do |format|
      if @rating.update(rating_params)
        format.html { redirect_to @rating, notice: 'Rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @rating }
      else
        format.html { render :edit }
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating.destroy
    respond_to do |format|
      format.html { redirect_to ratings_url, notice: 'Rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
def set_rating
      @rating = Rating.find(params[:id])

end 
  def set_course 
	@course = Course.find(params[:course_id])
end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:score, :comment, :comment2, :comment3, :course_id, {course_ids: []})
    end
end
