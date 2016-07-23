class TreatmentsController < ApplicationController
  def posts
		@posts = Post.all
  end

  def posts_category
		case params[:category]
		when "vaccination"
			@category = "예방접종"
		when "neutering"
			@category = "중성화"
		when "grooming"
			@category = "미용"
		else
			@category = "일반진료"
		end
		@posts = Post.where(category: @category)
  end

  def show
  end

  def write
  end

  def write_complete
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
