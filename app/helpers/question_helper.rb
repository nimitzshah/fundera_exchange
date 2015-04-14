module QuestionHelper
  def questions
    questions = Post.where(:type=>"Question")
    questions
  end

  def question(id)
    question = Post.find(id)
    question
  end
end
