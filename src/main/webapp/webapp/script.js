$(document).ready(function(){

    $('.hello').counterUp({
    delay:10,
    time:1000
    });

    AOS.init();

    $('.abc').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        navText:['<i class="bi bi-arrow-left"></i>','<i class="bi bi-arrow-right"></i>'],
        dots:true,
        autoplay:true,
      
        responsive:{
        320:{
             items:1,
             dots:false
         },
        768:{
             items:2,
             nav:false,
             dots:false
         },
        1024:{
            items:3
        }
    }
});

$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:false,
    dots:false,
    autoplay:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
})

});

// Form Popup code

document.getElementById("openPopup").addEventListener("click", function() {
    document.getElementById("reservationPopup").style.display = "block";
});

document.getElementById("closePopup").addEventListener("click", function() {
    document.getElementById("reservationPopup").style.display = "none";
});


 

// function openPopup() {
//     document.getElementById('popup').style.display = 'block';
// }

// function closePopup() {
//     document.getElementById('popup').style.display='none';
// }/**


// Form Table View select

// Get the select elements
  /* const viewSelect = document.getElementById('view');
  const tableSelect = document.getElementById('table');

  // Add an event listener to the view select
  viewSelect.addEventListener('change', function () {
    const selectedView = viewSelect.value;

    // Hide all table options by default
    for (let i = 0; i < tableSelect.options.length; i++) {
      tableSelect.options[i].style.display = 'none';
    }

    // Show table options based on the selected view
   if (selectedView) {
      for (let i = 0; i < tableSelect.options.length; i++) {
        const option = tableSelect.options[i];
        const allowedViews = option.getAttribute('data-views');

        if (allowedViews && allowedViews.includes(selectedView)) {
          option.style.display = 'block';
        }
      }
    }
  });*/
  
  
  
 document.getElementById('sendOtpButton').addEventListener('click', function () {
    // Generate and display the OTP
    var generatedOtp = generateOtp();
    document.getElementById('otp').value = generatedOtp;

    // TODO: Send the OTP to the user's email using an AJAX call
    // For demonstration purposes, you can log it to the console
    console.log('OTP sent to the user: ' + generatedOtp);
});

function generateOtp() {
    // Generate a 6-digit numeric OTP
    return Math.floor(100000 + Math.random() * 900000).toString();
}


