/* Alert box on missing cfm template */
var vars = [], hash;
var q = document.URL.split('?')[1];
if (q != undefined) {
  q = q.split('&');
  for(var i = 0; i < q.length; i++) {
    hash = q[i].split('=');
    vars.push(hash[1]);
    vars[hash[0]] = hash[1];
  }
};

if (vars["error"] != undefined) {
	alert("The requested template (" + vars["error"] + ") does not exist. If you think this is a server error, please contact support.");
}

/* Expanding "About" text */
$("#moreAbout").click(function(){
   $(".extra-text").slideDown("slow");
	$(this).css("display","none");
});