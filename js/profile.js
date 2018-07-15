$(".preview").click(function(){
  $("#upload").click();
});

$("#upload").change(function(){
  preview(this);
});

function preview(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function(e) {
      $('.preview').attr('src', e.target.result);
    };
    reader.readAsDataURL(input.files[0]);
  }
}