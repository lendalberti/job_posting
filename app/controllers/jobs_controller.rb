class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  def index
    @jobs = Job.order('created_at DESC')
  end

  # GET /jobs/1
  def show
  end

  # GET /jobs/new
  def new
    @job = Job.new
    @job_posters = User.all.collect { |p| [p.fullname, p.id] }
    @categories  = Category.all.collect { |p| [p.name, p.id] }
    @statuses    = Status.all.collect { |p| [p.name, p.id] }
  end

  # GET /jobs/1/edit
  def edit
    @job_posters = User.all.collect { |p| [p.fullname, p.id] }
    @categories  = Category.all.collect { |p| [p.name, p.id] }
    @statuses    = Status.all.collect { |p| [p.name, p.id] }
  end

  # POST /jobs
  def create
    @job = Job.new()
    @job['user_id']     = params['job_poster_select']['user_id']
    @job['status_id']   = params['status_select']['status_id']
    @job['location']    = params['job']['location']
    @job['category_id'] = params['category_select']['category_id']
    @job['description'] = params['job']['description']

    if @job.save
      redirect_to @job, notice: 'Job was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /jobs/1
  def update
    @job['user_id'] = params['job_poster_select']['user_id']
    @job['status_id'] = params['status_select']['status_id']
    @job['location']  = params['job']['location']
    @job['category_id']  = params['category_select']['category_id']
    @job['description']  = params['job']['description']

    if @job.update(job_params)
      redirect_to @job, notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
    redirect_to jobs_url, notice: 'Job was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:status_id, :category_id, :location, :user_id, :description)
    end
end
