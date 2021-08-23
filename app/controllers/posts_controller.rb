class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  # GET /posts or /posts.json
  def index
    search = params[:search]
    if search.nil? || params[:commit] == "Cancel"
      params[:search] = ''
      @posts = Post.all.paginate(page: params[:page], per_page: 6)
    elsif params[:commit] == "Sort Title(ASC)"
      @posts = Post.where('title LIKE :search', search: "%#{params[:search]}%").order(title: :asc).paginate(page: params[:page], per_page: 5)
    elsif params[:commit] == "Sort Title(Desc)"
      @posts = Post.where('title LIKE :search ', search: "%#{params[:search]}%").order(title: :desc).paginate(page: params[:page], per_page: 5)
    elsif params[:commit] == "Sort Body(ASC)"
      @posts = Post.where('body LIKE :search', search: "%#{params[:search]}%").order(body: :asc).paginate(page: params[:page], per_page: 5)
    elsif params[:commit] == "Sort Body(Desc)"
      @posts = Post.where('body LIKE :search', search: "%#{params[:search]}%").order(body: :desc).paginate(page: params[:page], per_page: 5)
    else
      #@posts = Post.where(title: search).paginate(page: params[:page], per_page: 5)
      @posts = Post.where('title LIKE :search OR body LIKE :search', search: "%#{params[:search]}%").paginate(page: params[:page], per_page: 5)
    end
  end

  # GET /posts/1 or /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = Post.new(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def sorting
    title = params[:search]
    @posts = Post.find_by(title: title).paginate(page: params[:page], per_page: 1)
    render "index"
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
