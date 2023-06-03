require "test_helper"

class StreamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stream = streams(:one)
  end

  test "should get index" do
    get streams_url, as: :json
    assert_response :success
  end

  test "should create stream" do
    assert_difference("Stream.count") do
      post streams_url, params: { stream: { streamer_id: @stream.streamer_id, title: @stream.title, viewers: @stream.viewers } }, as: :json
    end

    assert_response :created
  end

  test "should show stream" do
    get stream_url(@stream), as: :json
    assert_response :success
  end

  test "should update stream" do
    patch stream_url(@stream), params: { stream: { streamer_id: @stream.streamer_id, title: @stream.title, viewers: @stream.viewers } }, as: :json
    assert_response :success
  end

  test "should destroy stream" do
    assert_difference("Stream.count", -1) do
      delete stream_url(@stream), as: :json
    end

    assert_response :no_content
  end
end
