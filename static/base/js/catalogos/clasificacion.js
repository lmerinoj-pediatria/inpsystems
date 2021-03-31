$(document).ready(function(){
    
    /* EJEMPLO USO BASICO DE AUTOCOMPLETE DE JQUERY-UI */
    var availableTags = [
        "ActionScript",
        "AppleScript",
        "Asp",
        "BASIC",
        "C",
        "C++",
        "Clojure",
        "COBOL",
        "ColdFusion",
        "Erlang",
        "Fortran",
        "Groovy",
        "Haskell",
        "Java",
        "JavaScript",
        "Lisp",
        "Perl",
        "PHP",
        "Python",
        "Ruby",
        "Scala",
        "Scheme"
      ];
      $('input[name="search"]').autocomplete({
        source: function(request, response){

        },
        minLength: 2,
        select:function(event,ui){
            console.log(ui.item);
        }
      });
    

});
