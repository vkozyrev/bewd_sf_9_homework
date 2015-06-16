class RecordLabelsController < ApplicationController
  def index
    @record_labels = RecordLabel.all
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

  def edit
    @record_label = get_record_label
  end

  def update
    @record_label = get_record_label
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
    params.require(:record_label).permit(:name, :image_url)
  end

  def get_record_label
    RecordLabel.find(params[:id])
  end
end
