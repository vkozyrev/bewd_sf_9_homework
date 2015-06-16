class RecordLabelsController < ApplicationController

	def index
		@record_labels = RecordLabel.all
	end

	def new
		@record_label = RecordLabel.new
	end

	def create
		@record_label = RecordLabel.new(record_label_params)
		if @record_label.save
			redirect_to record_labels_path
		else
			render 'new'
		end
	end

	def edit
		@record_label = RecordLabel.find(params[:id])
	end

	def update
		@record_label = RecordLabel.find(params[:id])

		if @record_label.update(record_label_params)
			redirect_to @record_label
		else
			render 'edit'
		end
	end

	def show
		@record_label = RecordLabel.find(params[:id])
	end

	def destroy
		@record_label = RecordLabel.find(params[:id])
		@record_label.destroy

		redirect_to record_labels_path
	end

	private

	def record_label_params
		params.require(:record_label).permit(:label_name)
	end

end
