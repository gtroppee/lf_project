class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    redirect_to surveys_path
    flash[:success] = "Questionnaire supprimé avec succès"
  end

end
