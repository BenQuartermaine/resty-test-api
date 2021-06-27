class Api::V1::CommentsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index ]

  def index
    @comments = policy_scope(Comment)
  end
end