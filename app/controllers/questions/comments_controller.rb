class Questions::CommentsController < CommentsController
  before_action :set_question

  private

  def set_question
    @question = Question.find(params[:question_id])
  end
end
