const tableRow = document.querySelectorAll('.table-row');
var quantity = document.querySelector('.quantity').value ;
console.log(quantity)
tableRow.forEach((rowItem) => {
    const minusAction = rowItem.querySelector('.minus-action');
    const plusAction = rowItem.querySelector('.plus-action');

    minusAction.onclick =()=>{
        quantity--;
        if(quantity < 1) return ;
        rowItem.querySelector('.quantity').value = quantity;
        
    }
    plusAction.onclick =()=>{
        quantity++;
        rowItem.querySelector('.quantity').value = quantity;
    }
})

const listOfItem = document.querySelectorAll('.table-row');
var totalItemInCart = listOfItem.length;
const listOfPrice = document.querySelectorAll('.item-price');
var totalPrice = 0 ;
listOfPrice.forEach((price, index)=>{
    var priceString = (price.innerHTML).split('.');
    priceString = parseInt(priceString[0]);
    totalPrice += priceString ;
    document.querySelector('.total-price').innerHTML = totalPrice +' VNĐ';
    document.querySelector('.final-price').innerHTML = totalPrice*0.1 +' VNĐ'
})

document.querySelector('.amount-item').innerHTML = totalItemInCart;
