function openNav() {
    document.getElementById("gt3-contact-widget_body").style.width = "350px";
    document.getElementById("main").style.marginLeft = "350px";
}

function closeNav() {
    document.getElementById("gt3-contact-widget_body").style.width = "0";
    document.getElementById("main").style.marginLeft = "0";
}

$(window).on('load', function() {

    setTimeout(function() {
        $("#promoCodeModal").modal();
    }, 3000);

});


function callRPForPaymentAndSubmitFormOnSuccess(amount_in_paise, functionToRunAfter) {
    let options = {
        "key": "rzp_live_3ZGqJ9vKBq0kBh",
        "amount": amount_in_paise,
        "handler": function(response) {
            functionToRunAfter(response.razorpay_payment_id);
        },
        "prefill": {}
    };
    var rzp1 = new Razorpay(options);
    rzp1.open();
}



document.addEventListener("DOMContentLoaded", function(){

  $(".custom_form_submit").submit(function (event) {
    event.preventDefault();
    var action_url = $(this).attr("action");
    var data = $(this).serialize();
    var success_message = $(this).attr("data-success-msg");
    $.ajax({
      type: 'POST',
      url: action_url,
      data: data,
      success: function (msg) {}
    });
    new Noty({
      type: 'success',
      timeout: 3000,
      text: success_message,
    }).show();
    window.location.replace("/thank_you/lead");
  });

});