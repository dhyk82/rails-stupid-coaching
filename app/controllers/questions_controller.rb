class QuestionsController < ApplicationController
  ASK_INPUT = 'I am going to work'.freeze

  def ask; end

  def answer
    # to retreive the question
    @question = params[:question]
    # provide answer to question
    @answer = generate_answer(@question)
  end

  # generate answer
  def generate_answer(question)
    if question == ASK_INPUT
      return 'Great!'
    elsif question.include?('?')
      return 'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end

# every page being added will be in the order of
# Route => Controller => View
