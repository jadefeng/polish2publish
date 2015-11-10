require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { author_id: @project.author_id, category_id: @project.category_id, editor_id: @project.editor_id, genre_id: @project.genre_id, page_no: @project.page_no, photo: @project.photo, state: @project.state_id, title: @project.title, url: @project.url, word_count: @project.word_count }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { author_id: @project.author_id, category_id: @project.category_id, editor_id: @project.editor_id, genre_id: @project.genre_id, page_no: @project.page_no, photo: @project.photo, state: @project.state_id, title: @project.title, url: @project.url, word_count: @project.word_count }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
