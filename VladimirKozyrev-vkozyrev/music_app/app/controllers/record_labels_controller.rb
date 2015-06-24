class RecordLabelsController < ApplicationController

  before_action :get_record_label, only: [:update, :edit, :show, :destroy]

  def index
    @record_labels = RecordLabel.all
  end

  def show
  end

  def new
    @record_label = RecordLabel.new
  end

  def create
    @record_label = RecordLabel.create(record_label_params)
    if @record_label.save
      redirect_to record_labels_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @record_label.update_attributes(record_label_params)
      redirect_to record_labels_path
    else
      render "edit"
    end
  end

  def destroy
    get_record_label.destroy
    redirect_to(:back)
  end

  private

  def record_label_params
    params.require(:record_label).permit(:name)
  end

  def get_record_label
    @record_label = RecordLabel.find(params[:id])
  end
end
