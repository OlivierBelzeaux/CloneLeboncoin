class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: %I[show edit update destroy]

  def index
    @announcements = Announcement.all
  end

  def show
  end

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(set_announcement)
    if @announcement.save
      redirect_to announcement_path(@announcement.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @announcement.update(params_announcement)
      redirect_to announcement_path(@announcement.id)
    else
      render :edit
    end
  end

  def destroy
    @announcement.destroy
    redirect_to announcements_path
  end

  private

  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

  def params_announcement
    params.require(:announcement).permit(:title, :description, :category, :price, :url_photo, :user_id)
  end
end
