require 'site_prism'
require 'capybara/cucumber'

class QuestionsPage < SitePrism::Page

  set_url 'http://rahul.domain4now.com/questions/new'
  element :title, '[id = "question_title"]'
  element :content,'[id = "question_content"]'
  element :topic,'[id = "question_topic"]'

  def new_question
    question.click
    new.click
  end

  def fill_up_question_field(tit, cont, top)
    title.set tit
    content.set cont
    topic.set top
  end
end
