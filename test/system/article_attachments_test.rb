require "application_system_test_case"

class ArticleAttachmentsTest < ApplicationSystemTestCase
  setup do
    @article_attachment = article_attachments(:one)
  end

  test "visiting the index" do
    visit article_attachments_url
    assert_selector "h1", text: "Article Attachments"
  end

  test "creating a Article attachment" do
    visit article_attachments_url
    click_on "New Article Attachment"

    fill_in "Article", with: @article_attachment.article_id
    fill_in "Avatar", with: @article_attachment.avatar
    click_on "Create Article attachment"

    assert_text "Article attachment was successfully created"
    click_on "Back"
  end

  test "updating a Article attachment" do
    visit article_attachments_url
    click_on "Edit", match: :first

    fill_in "Article", with: @article_attachment.article_id
    fill_in "Avatar", with: @article_attachment.avatar
    click_on "Update Article attachment"

    assert_text "Article attachment was successfully updated"
    click_on "Back"
  end

  test "destroying a Article attachment" do
    visit article_attachments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article attachment was successfully destroyed"
  end
end
