Blog.controllers :posts do
  
  get :index, :provides => [:html, :rss, :atom] do
    @posts = Post.all(:order => 'created_at desc')
    render 'posts/index'
  end

  get :show, :with => :id do
    @posts = Post.find_by_id(params[:id])
    render 'posts/show'
  end

end