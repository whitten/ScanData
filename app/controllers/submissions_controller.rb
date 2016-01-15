# Encoding: utf-8
# Submission Controller
class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token,
                     if: proc { |c| c.request.format == 'application/json' },
                     only: [:create]
  protect_from_forgery with: :null_session,
                       if: proc { |c| c.request.format == 'application/json' }

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions
  # POST /submissions.json
  def create
    respond_to do |format|
      format.html { @submission = Submission.new(submission_params) }
      format.json do
        if params.key?(:apikey) &&
           User.where(apikey: params[:apikey]).length > 0
          @submission = Submission.new
          @submission.name = params[:name]
          @submission.file_type = params[:file_type]
          @submission.digest = params[:digest]
          @submission.imageError = params[:imageError]
          @submission.modified = params[:modified]
          @submission.size = params[:size]
          @submission.height = params[:height]
          @submission.width = params[:width]
          @submission.page = params[:page]
          @submission.folder = params[:folder]
          @submission.apikey = params[:apikey]
        else
          render json: ['Invalid API Key'], status: :unprocessable_entity
          return
        end
      end
    end

    respond_to do |format|
      if @submission.save
        format.html do
          redirect_to @submission,
                      notice: 'Submission was successfully'\
                                'created.'
        end
        format.json { render :show, status: :created, location: @submission }
      else
        format.html { render :new }
        format.json do
          render json: @submission.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html do
          redirect_to @submission,
                      notice: 'Submission was successfully'\
                              'updated.'
        end
        format.json { render :show, status: :ok, location: @submission }
      else
        format.html { render :edit }
        format.json do
          render json: @submission.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html do
        redirect_to submissions_url,
                    notice: 'Submission was successfully' \
                              'destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_submission
    @submission = Submission.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def submission_params
    params.require(:submission).permit(:name, :file_type, :hash,
                                       :imageError, :size, :height,
                                       :width, :page, :modified,
                                       :folder, :user_id, :submission_id)
  end
end
