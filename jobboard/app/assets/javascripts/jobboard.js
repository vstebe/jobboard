$(function() {

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
