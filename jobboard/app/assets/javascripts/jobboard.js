$(function() {
    var kkeys = [], konami = "38,38,40,40,37,39,37,39,66,65";
    $(document).keydown(function(e) {
      kkeys.push( e.keyCode );
      if ( kkeys.toString().indexOf( konami ) >= 0 ){
        kkeys = [];
        //TODO POUR NICOLAS
      }
    });


    updateGroup = function() {
      if ($('#radioStudent').is(':checked')) {
        $('#promoGroup').show();
        $('#companyGroup').hide();
      } else {
        $('#promoGroup').hide();
        $('#companyGroup').show();
      }
    };

    $('#radioStudent').click(function() {
      updateGroup();
    });

    $('#radioCompany').click(function() {
      updateGroup();
    });

    updateGroup();

});
