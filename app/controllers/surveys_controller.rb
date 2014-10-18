class SurveysController < ApplicationController
  before_action :set_survey, only: [:edit, :destroy]

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to surveys_path
      flash[:success] = "Questionnaire créé avec succès"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @survey.update_attributes(survey_params)
      redirect_to surveys_path
      flash[:success] = "Questionnaire mis à jour avec succès"
    else
      render 'edit'
    end
  end

  def destroy
    @survey.destroy
    redirect_to surveys_path
    flash[:success] = "Questionnaire supprimé avec succès"
  end

  private
    def survey_params
      params.require(:survey).permit(:title, :user_name, :user_email, :comment)
    end

    def set_survey
      @survey = Survey.find(params[:id])
    end

end
