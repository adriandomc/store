class RichTextAttachmentsController < ApplicationController
  def create
    @blob = ActiveStorage::Blob.create_after_upload!(
      io: params[:file],
      filename: params[:file].original_filename,
      content_type: params[:file].content_type
    )
    render json: { sgid: @blob.attachable_sgid }
  end
end
