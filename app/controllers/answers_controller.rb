class AnswersController < ApplicationController
  
   def index
   @answers= Answer.all
   end
   def show
  end

  # GET /categories/new
  def new
    @answer = Answer.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end


	private

    def question_params
      params.require(:answer).permit(:name,:question_id)
    end
end
