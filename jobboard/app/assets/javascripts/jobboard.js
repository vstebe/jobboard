$(function() {
    $('#radioStudent').click(function() {
      $('#promoGroup').show();
      $('#companyGroup').hide();
    });

    $('#radioCompany').click(function() {
      $('#promoGroup').hide();
      $('#companyGroup').show();
    });
    $('#companyGroup').hide();
});
