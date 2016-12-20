class MembersController < ApplicationController
	
	def index
		@members = Member.all
	end

	def show
		@member = Member.find(params[:id])
	end

	def new
		@member = Member.new
	end

	def create
		@member = Member.new(name: params[:member][:name], lastname: params[:member][:lastname], age: params[:member][:age],email: params[:member][:email])
		@member.save
		redirect_to @member
	end

	def edit
		@member = Member.find(params[:id])
	end

	def update
		@member = Member.find(params[:id])
		if @member.update(member_params)
			redirect_to members_path
		else
			render :edit
		end

	end

	def destroy
		@member = Member.find(params[:id])
		@member.destroy
		redirect_to members_path
	end



	private

	def member_params
		params.require(:member).permit(:name,:lastname,:age,:email,:gender)
	end

end