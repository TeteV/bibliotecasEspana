window.onload = initialize;

function initialize(){

}

function search() {
    var input, filter, tBody, tr, a, i;
    input = document.getElementById("mySearch");
    filter = input.value.toUpperCase();
    tBody = document.getElementById("my-tbody");
    tr = tBody.getElementsByTagName("tr");
  
    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
      a = tr[i].getElementsByTagName("td")[0];
      if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }