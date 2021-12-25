var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = 300 + "px";
    }
  });
}

var editTable ={
    addRow:function(){
        $mtr = $("#amsTbody tr:last").clone();
        $mtr.each(function(i, e){
        $(e).find("input").val(i);
        });
        $("#amsTbody tr:last").after( $mtr );
        },
        delRow:function(){
            if($("#amsTbody tr").length <= 2){
            return;
            }
            $("#amsTbody tr:last").remove();
        },
        addCol:function(){
            $col = $("<td class='tdSet'><input type='text' /></td>");
            $("#amsTbody tr").append($col);
        },
        delCol:function(){
            alert($("#amsTbody tr").eq(0).find("td").length);
            if(  $("#amsTbody tr").eq(0).find("td").length <= 2 ){
            return;
            }
            alert($("#amsTbody tr").length);
            $("#amsTbody tr td:last-child").remove();
        },
};
