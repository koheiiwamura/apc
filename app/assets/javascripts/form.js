// $(function(){
//   $('#js-btn').click(function(e){
//     $('#js-form-fail').removeAttr('class')
//   });
//   $('#js-btn').click(function(e) {
//     alert('押されたけどページの更新はしないよ。');
//     return e.preventDefault();
//   });
// });
function hyoji1(num)
{
  if (num == 0)
  {
    document.getElementById("loginModal").style.display="block";
  }
  else
  {
    document.getElementById("loginModal").style.display="none";
  }
}
