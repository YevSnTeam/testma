# encoding: utf-8
class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Freund hinzugefügt"
      redirect_to root_url
    else
      flash[:notice] = "Freund konnte nicht hinzugefügt werden"
      redirect_to current_user
    end  
  end
  
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Freund wurde entfernt"
    redirect_to current_user
  end
end