module QuestionHelper
  def questions
    questions = Post.where(:type=>"Question").order(creation_time: :desc)
    questions
  end

  def get_question(id)
    question = Post.find(id)
    question
  end

  def get_answers(id)
    answers = Post.where(:parent_id => id).order(creation_time: :desc)
    answers
  end
end
