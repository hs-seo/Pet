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
		@post = Post.find(params[:id])
  end

  def write
  end

  def write_complete
    post = Post.new
    post.category = params[:post_category]
    post.title = params[:post_title]
    post.content = params[:post_content]
    if post.save
      flash[:alert] = "저장되었습니다."
      redirect_to "/treatments/show/#{post.id}"
    else
      flash[:alert] = post.errors.values.flatten.join(' ')
      redirect_to :back
    end
  end

  def edit
  end

  def edit_complete
  end

  def delete_complete
  end
end
