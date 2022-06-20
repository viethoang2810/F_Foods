// const sliderMain = document.querySelector('.slider-main');
// const sliderList = document.querySelectorAll('.slider-item');
// const sliderDot = document.querySelectorAll('.slider-dot-item');
// let index = 0;
// const quantity = sliderDot.length;
// let oneSlider = sliderMain.clientWidth;
// let totalSlider = quantity * oneSlider;
// let transformScreen = -oneSlider;
// setInterval(changeSlide, 2000);

// function changeSlide() {
//     transformScreen += oneSlider;
//     // console.log(transformScreen);
//     if (transformScreen >= 0 && transformScreen % totalSlider === oneSlider) {
//         sliderList.forEach(sliderItem => sliderItem.style = `transform: translateX(${transformScreen}px)`);
//     }
//     if (transformScreen < 0 && (-transformScreen) % totalSlider === (totalSlider - oneSlider)) {
//         sliderList.forEach(sliderItem => sliderItem.style = `transform: translateX(${transformScreen}px)`);
//     }
//     sliderMain.style = `transform: translateX(${transformScreen * -1}px)`;
// }
// Process form elements 
const visiblePassword = document.querySelectorAll('.pass-visible');
const inputPassword = document.querySelectorAll('.input-password');
const createAccountForm = document.querySelectorAll('.create-account-content');
const blockForm = document.querySelector('.form-process');
var clickCounting = 1;
var changeCount = 0 ;
const changeForm = document.querySelectorAll('.form-wrapper');
console.log(inputPassword)
visiblePassword.forEach((passItem) => {
    passItem.addEventListener('click', () => {
        clickCounting++;
        if (clickCounting%2 === 0) {
            inputPassword.forEach((pass) => {
                pass.setAttribute('type', 'text');
            })
            passItem.classList.remove('fa-eye');
            passItem.classList.add('fa-eye-slash');
           
        }else{
            inputPassword.forEach((pass) => {
                pass.setAttribute('type', 'password');
            })
            passItem.classList.remove('fa-eye-slash');
            passItem.classList.add('fa-eye');
        }
    })
})

createAccountForm.forEach((item) => {
    item.addEventListener('click', () => {
        changeForm.forEach((formItem,index) => {
            formItem.classList.toggle('disable-form');
        })
    })
})