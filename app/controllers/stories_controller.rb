class StoriesController < ApplicationController
  before_action :set_business, only: [:new, :create]
  before_action :set_story, only: [:edit, :update, :destroy, :show]


  def show
  end

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.business = @business

    params[:story][:category_ids].shift
    params[:story][:category_ids].each do |category_id|
      @story.categories << Category.find(category_id)
    end

    if @story.save
      redirect_to story_path(@story)
    else
      @story = Story.new
      render :new
    end
  end

  def edit
  end

  def update
    if @story.update(story_params)

      @story.categories.destroy_all
      params[:story][:category_ids].shift
      params[:story][:category_ids].each do |category_id|
        @story.categories << Category.find(category_id)
      end

      redirect_to story_path(@story)
    else
      set_story
      render :edit
    end
  end

  private

  def story_params
    params.require(:story).permit(:title, :description, :published)
  end

  def set_story
    @story = Story.find(params[:id])
  end

  def set_business
    @business = Business.find(params[:business_id])
  end
end
