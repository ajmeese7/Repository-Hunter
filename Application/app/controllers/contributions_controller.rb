class ContributionsController < ApplicationController
	def generate
    svg = GithubChart.new(user: params["username"]).render(:svg)
		respond_to do |format|
			format.svg { render inline: svg}
		end 
  	end
end
