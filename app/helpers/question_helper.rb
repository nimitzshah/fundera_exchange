module QuestionHelper
  def questions
    questions = Post.where(:type=>"Question").order(creation_time: :desc)
    questions
  end

  def question(id)
    question = Post.find(id)
    question
  end
end
