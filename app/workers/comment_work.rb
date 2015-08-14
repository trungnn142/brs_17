class CommentWork
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform comment_id
    comment = Comment.find comment_id
    UserMailer.email_new_comment(comment).deliver_now
  end
end
