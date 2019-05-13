# frozen_string_literal: true
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @your_question = params[:question]
    @reply_coach = reply(@your_question)
  end

  def reply(your_question)
    if your_question.last == "?"
      'Silly question, get dressed and go to work!'
    elsif your_question == "I am going to work right now!"
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
