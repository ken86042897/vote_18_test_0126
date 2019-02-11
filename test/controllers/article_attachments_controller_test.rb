require 'test_helper'

class ArticleAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_attachment = article_attachments(:one)
  end

  test "should get index" do
    get article_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_article_attachment_url
    assert_response :success
  end

  test "should create article_attachment" do
    assert_difference('ArticleAttachment.count') do
      post article_attachments_url, params: { article_attachment: { article_id: @article_attachment.article_id, avatar: @article_attachment.avatar } }
    end

    assert_redirected_to article_attachment_url(ArticleAttachment.last)
  end

  test "should show article_attachment" do
    get article_attachment_url(@article_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_attachment_url(@article_attachment)
    assert_response :success
  end

  test "should update article_attachment" do
    patch article_attachment_url(@article_attachment), params: { article_attachment: { article_id: @article_attachment.article_id, avatar: @article_attachment.avatar } }
    assert_redirected_to article_attachment_url(@article_attachment)
  end

  test "should destroy article_attachment" do
    assert_difference('ArticleAttachment.count', -1) do
      delete article_attachment_url(@article_attachment)
    end

    assert_redirected_to article_attachments_url
  end
end
