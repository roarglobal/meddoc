class DoctorsController < ApplicationController
	before_action :find_doctor, only:[:show,:edit,:update,:destroy]
	
	def new
		@doctor = Doctor.new
		@doctor.user = current_user
	end

	def show
	end

	def create
		@doctor = Doctor.new(doctor_params)
		@doctor.user = current_user

		if @doctor.save
			redirect_to @doctor, notice: "Successfully created new Doctor"
		else
			render 'new'
		end
	end

	def index
		@doctors = Doctor.all
	end

	def update
		if @doctor.update(doctor_params)
			redirect_to @doctor, notice: "Pin was Successfully updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@doctor.destroy
		redirect_to root_path
	end

	private

	def doctor_params
		params.require(:doctor).permit(:officename,:address,:city,:state,:zipcode,:description, :image)
	end

	def find_doctor
		@doctor = Doctor.find(params[:id])
	end

end
