class QuestionsController < ApplicationController
  def answer
    @question = params[:query]
    @answer = coach_answer(@question)
  end

  def ask
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message != "I am going to work right now!"
      return "I don't care, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    while your_message == your_message.upcase
      if your_message.include?("?")
        return "I can feel your motivation!" + " " + "Silly question, get dressed and go to work!"
      elsif your_message != "I AM GOING TO WORK RIGHT NOW!"
        return "I can feel your motivation!" + " " + "I don't care, get dressed and go to work!"
      elsif your_message == "I AM GOING TO WORK RIGHT NOW!"
        return ""
      end
    end
    coach_answer(your_message)
  end

end
