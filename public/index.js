window.onload = initialize;

function initialize() {
  displayResult();

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

function loadXMLDoc(filename) {
  if (window.ActiveXObject) {
    xhttp = new ActiveXObject("Msxml2.XMLHTTP");
  }
  else {
    xhttp = new XMLHttpRequest();
  }
  xhttp.open("GET", filename, false);
  try { xhttp.responseType = "msxml-document" } catch (err) { } // Helping IE11
  //xhttp.setRequestHeader('Accept', 'application/xml');
  xhttp.send("");
  return xhttp.responseXML;
}

function displayResult() {
  xml = loadXMLDoc("http://localhost:3000/biblio.xml");
  xsl = loadXMLDoc("parquecitos.xsl");
  // code for IE
  if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
    ex = xml.transformNode(xsl);
    document.getElementById("my-tbody").innerHTML = ex;
  }
  // code for Chrome, Firefox, Opera, etc.
  else if (document.implementation && document.implementation.createDocument) {
    xsltProcessor = new XSLTProcessor();
    xsltProcessor.importStylesheet(xsl);
    resultDocument = xsltProcessor.transformToFragment(xml, document);
    document.getElementById("my-tbody").appendChild(resultDocument);
  }
}