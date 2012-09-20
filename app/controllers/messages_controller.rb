class MessagesController < ApplicationController
  
  def new
    @message = Message.new(:recipient_id => params[:recipient_id])
    unread_messages = current_user.received_messages.where(:sender_id => params[:recipient_id], :received => false)
    unread_messages.each do |msg|
      msg.update_attributes(:received => true)
    end
  end
  
  
  def create
    user = User.find(params[:message][:recipient_id])
    dialog = current_user.find_dialog_with(user)
    if dialog.nil?
      @message = current_user.sent_messages.build(:recipient_id => params[:message][:recipient_id], :body => params[:message][:body], :dialog_id => nil)   
    else dialog.dialog_id.nil?
      @message = current_user.sent_messages.build(:recipient_id => params[:message][:recipient_id], :body => params[:message][:body], :dialog_id => dialog.id)
      dialog.update_attributes(:updated_at => Time.now)
    end
    unless @message.save
        flash[:notice] = "Nachricht konnte nicht gesendet werden"
    end  
    redirect_to new_message_path(:recipient_id => params[:message][:recipient_id])
  end
  
  def index
    @dialogs = current_user.all_dialogs.sort_by{|e| e[:updated_at]}.reverse
  end
  
end
