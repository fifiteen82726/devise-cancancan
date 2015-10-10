class AnswersController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		@answer = @question.answer.build(answers_params)
		@answer.user = current_user
		@answer.save
	end

	def destroy
		@question = Question.find(params[:question_id])
		@answer = @question.answer.find(params[:id]).destroy
		redirct_to questions_path
	end

	private

		def answer_params
			params.require(:answer).permit(:content)
		end
	
end
