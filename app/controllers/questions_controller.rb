class QuestionsController < InheritedResources::Base

  private

    def question_params
      params.require(:question).permit(:name)
    end
end

