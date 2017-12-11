class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]


	def index
		@projects = Project.all
	end

	def show
	end

	def new
		@project = Project.new
	end

	def edit
	end

	def create
		@project = Project.new(project_params)
	  if @project.save
		flash[:notice] = "Project successfully created"
		redirect_to project_path(@project)
	  else
	  	render :new
	  end
	end

	private

	def find_project
		@project = Project.find(params[:id])
	end

	def project_params
		params[:project].permit(:name, :description)
	end
end
