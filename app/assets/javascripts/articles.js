$(function() {
  $('#article_content').inlineattachment({
    uploadUrl: '/images',
    uploadFieldName: 'image[file]',
    jsonFieldName: 'url',
    extraParams: {
      'authenticity_token': $("[name='authenticity_token']").val()
    },
    extraHeaders: { 
      "Accept": "application/json" 
    }
  })
})