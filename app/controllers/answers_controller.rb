class AnswersController < ApplicationController
	def create
		@question = Question.find(params[:question_id])
		#找到指定的Question
		@answer = @question.answers.build(answers_params)
		#會用answers_params建立一個 Answer的record 並且對應到@question
		@answer.user = current_user
		#設定answer user的value
		@answer.save
		redirect_to questions_path

	end

	def destroy
		@question = Question.find(params[:question_id])
		@answer = @question.answers.find(params[:id]).destroy
		redirect_to questions_path
	end

	private

		def answers_params
			params.require(:answer).permit(:content)
		end
	
end
