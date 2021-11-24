class SkillsController < ApplicationController
  def create
    @resume = Resume.find(params[:article_id])
    @skill = @resume.skills.create(skill_params)
    redirect_to resume_path(@resume)
  end
 
  private
    def skill_params
      params.require(:skill).permit(:skill_profession, :skill_level)
    end
end
