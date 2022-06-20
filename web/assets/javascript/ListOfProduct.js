const tittle = document.querySelector('.list-header-content');
setInterval(function () {
    tittle.style.color = makeColor();
}, 2000)
function makeColor() {
    var r = Math.floor(Math.random() * 256);
    var g = Math.floor(Math.random() * 256);
    var b = Math.floor(Math.random() * 256);

    return 'rgb(' + r + ',' + g + ',' + b + ')';
}
// Handle the animation of navigation bar 
// const navigationList = document.querySelectorAll('.nav-list');

// navigationList.forEach((navItem) => {
//     const selectItem = document.querySelector('.selected-item');
//     navItem.addEventListener('click', () =>{
//         navItem.style.backgroundColor = 'rgb(228, 109, 12)';
//         selectItem.style.display = 'block';
//         selectItem.styleSheet.insertRule(`${this}::after{display:block;}`)
//     })
// })
// Phân trang sản phẩm 
var amountPerPage = 5; //Amount of products are allowed render in a page
var start = 0;
var currentPage = 1;
var end = amountPerPage;
const listOfItem = document.querySelectorAll('.product-item-detail');
const productWrapper = document.querySelector('.list-product-item');
const nextBtn = document.querySelector('.next-button');
const previousBtn = document.querySelector('.previous-button');

listOfItem.forEach((item, index) => {
    if (index >= amountPerPage) {
        item.classList.add('cart-hidden');
    }
})

function renderProduct(start, end) {
    for (var i = 0; i < listOfItem.length; i++) {
        if (i >= start && i < end) {
            console.log(start, end)
            listOfItem[i].classList.remove('cart-hidden');
        } else {
            listOfItem[i].classList.add('cart-hidden');
        }
    }
}

nextBtn.addEventListener('click', () => {
    previousBtn.classList.remove('active');
    nextBtn.classList.add('active');

    currentPage++;
    start = (currentPage - 1) * amountPerPage;
    end = currentPage * amountPerPage;
    if (end > listOfItem.length) return;
    renderProduct(start, end);
})
previousBtn.addEventListener('click', () => {
    nextBtn.classList.remove('active');
    previousBtn.classList.add('active');
    currentPage--;
    start = (currentPage - 1) * amountPerPage;
    end = currentPage * amountPerPage;
    if (end > listOfItem.length) return;
    renderProduct(start, end);
})