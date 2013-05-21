class AnswersController < ApplicationController
  before_filter :getQandA, except: [:create, :new, :index]

  # GET /questions/:question_id/answers
  # GET /questions/:question_id/answers.json
  def index
    @question = Question.find(params[:question_id])
    @answers = Answer.where("question_id = ?", @question.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @answers }
    end
  end

  # GET /questions/:question_id/answers/1
  # GET /questions/:question_id/answers/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /questions/:question_id/answers/new
  # GET /questions/:question_id/answers/new.json
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @answer }
    end
  end

  # GET /questions/:question_id/answers/:id/edit
  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  # POST /questions/:question_id/answers
  # POST /questions/:question_id/answers.json
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(params[:answer])

    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_answers_path(@question), notice: 'Answer was successfully created.' }
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "new" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questions/:question_id/answers/1
  # PUT /questions/:question_id/answers/1.json
  def update
    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/:question_id/answers/1
  # DELETE /questions/:question_id/answers/1.json
  def destroy
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to answers_url }
      format.json { head :no_content }
    end
  end

  private
    def getQandA
      @question = Question.find(params[:question_id])
      @answer = Answer.find(params[:id])
    end
end
