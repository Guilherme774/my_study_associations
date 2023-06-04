require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
  end

  test "should get index" do
    get categories_url, as: :json
    assert_response :success
  end

  test "should create category" do
    assert_difference("Category.count") do
      post categories_url, params: { category: { categoriable_id: @category.categoriable_id, categoriable_type: @category.categoriable_type, name: @category.name } }, as: :json
    end

    assert_response :created
  end

  test "should show category" do
    get category_url(@category), as: :json
    assert_response :success
  end

  test "should update category" do
    patch category_url(@category), params: { category: { categoriable_id: @category.categoriable_id, categoriable_type: @category.categoriable_type, name: @category.name } }, as: :json
    assert_response :success
  end

  test "should destroy category" do
    assert_difference("Category.count", -1) do
      delete category_url(@category), as: :json
    end

    assert_response :no_content
  end
end
