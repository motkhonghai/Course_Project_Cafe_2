let menu = document.querySelector('#menu-btn');
let navbar = document.querySelector('.navbar');

menu.onclick = () => {
    menu.classList.toggle('fa-times');
    navbar.classList.toggle('active');
};

window.onscroll = () => {
    menu.classList.remove('fa-times');
    navbar.classList.remove('active');
};

document.querySelectorAll('.image-slider img').forEach(images => {
    images.onclick = () => {
        var src = images.getAttribute('src');
        document.querySelector('.main-home-image').src = src;
    };
});

var swiper = new Swiper(".review-slider", {
    spaceBetween: 20,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
    },
    loop: true,
    grabCursor: true,
    autoplay: {
        delay: 7500,
        disableOnInteraction: false,
    },
    breakpoints: {
        0: {
            slidesPerView: 1
        },
        768: {
            slidesPerView: 2
        }
    },
});

// pop up
const closeBtn =  document.querySelector("#close-popup-btn");
const oppenBtn = document.querySelector('#oppen-popup-btn');
const popup    = document.querySelector('.popup');

// console.log(popup.)

oppenBtn.addEventListener('click', (event) =>{
    popup.classList.toggle('hide');
});

popup.addEventListener('click', (event) =>{
    if(event.target == event.currentTarget){
        popup.classList.toggle('hide');
    }
});

closeBtn.addEventListener('click', (event) =>{
    popup.classList.toggle('hide');
});


