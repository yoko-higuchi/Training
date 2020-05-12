// q1
$(function () {
  $("#btn").on("click", function() {
    $("#name").text("山田太郎");
    if ( $("#name").css("color") == "rgb(0, 0, 255)" ) {
      $("#name").css("color", "red");
    }
    else {
      $("#name").css("color", "blue");
    }
  });
});

// q2
$(function () {
  $("#swim").hide();
  $("#bike").hide();
  $("#run").hide();
  $("#Swim").hide();
  $("#Bike").hide();
  $("#Run").hide();
  $("#hobby-name").hide();

  $("#btn2").on("click", function () {
    if ($("#select").val() == 0) {
      $("#meg").text("選択してください").css("color", "red").css("font-size", "10px");
    }
    else if ($("#select").val() == 1) {
      $("#hobby").text("好きな種目は？");
      $("#swim").show();
      $("#bike").show();
      $("#run").show();
      $("#Swim").show();
      $("#Bike").show();
      $("#Run").show();

      $("#btn2").hide();
    }
    else if ($("#select").val() == 2) {
      $("#hobby").text("それではなにが好き？");
      $("#hobby-name").show();
      $("#btn2").hide();
    }

  });
});

// q4
$(function () {
  $("#btn4").on("click", function () {
    $("#btn4").prop("disabled", true);
  });
});

// q5


