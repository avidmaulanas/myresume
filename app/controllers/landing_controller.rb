class LandingController < ApplicationController
  def index
  	@landing_config = LandingConfig.first
  	@skills = Skill.all
  end
end
