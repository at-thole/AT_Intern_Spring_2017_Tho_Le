$(document).ready(function(){
  function get_arr_tours(){
    return JSON.parse(sessionStorage.getItem('carts'));
  }
  var tours = get_arr_tours();
  var num_of_carts;
  if (tours == null){
    num_of_carts = 0;
  } else{
    num_of_carts = tours.length;
  }
  $('#num_of_carts').html(num_of_carts);
  $('.image-detail').click(function(){
    var arr_tour = get_arr_tours();
    var name = $(this).parent().find('figcaption').html();
    if (arr_tour == null){
      arr_tour = [];
    }
    var price = $(this).parent().find('.cost').html();
    price = price.replace(/\./g, '')
    var tour = {name: name, price: price};
    arr_tour.push(tour);
    var str = JSON.stringify(arr_tour);
    sessionStorage.setItem('carts', str);
    num_of_carts += 1;
    $('#num_of_carts').html(num_of_carts);
    console.log(num_of_carts);
  });
});
