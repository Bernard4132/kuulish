class MembershipsController < ApplicationController

    def create
      @membership = current_user.memberships.build(:group_id => params[:group_id])
      @group = Group.find_by(id: params[:group_id])
       @membership.save
        flash[:notice] = "Successfully joined #{@group.name} class."
        redirect_to @group
    end
    
    end