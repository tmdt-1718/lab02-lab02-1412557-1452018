module UsersHelper
  def conversation_interlocutor(conversation)
<<<<<<< HEAD
   conversation.recipient == current_user ? conversation.sender : conversation.recipient
 end
=======
    conversation.recipient == current_user ? conversation.sender : conversation.recipient
  end
>>>>>>> refs/remotes/origin/master
end
