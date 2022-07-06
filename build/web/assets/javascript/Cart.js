const tableRow = document.querySelectorAll('.table-row');


const listOfItem = document.querySelectorAll('.table-row');
var totalItemInCart = listOfItem.length;
const listOfPrice = document.querySelectorAll('.item-price');
var totalPrice = 0;
// listOfPrice.forEach((price, index) => {
//     var priceString = (price.innerHTML).split('.');
//     priceString = parseInt(priceString[0]);
//     totalPrice += priceString;
//     document.querySelector('.total-price').innerHTML = totalPrice + '.000 VNĐ';
//     
// })



function formatMoney(n) {
    var priceFormat;
    if (n >= 1000) {
        priceFormat = Math.round(n / 1000) + ".";
        var unit = n - Math.round(n / 1000) * 1000;
        if (unit >= 10 && unit <= 99)
            priceFormat += "0" + unit;
        else if (unit >= 0 && unit <= 9)
            priceFormat += "00" + unit;
        else
            priceFormat += unit;
    } else
        priceFormat = n;
    return priceFormat + ".000 VNĐ";
}
//Remove a row of item in table 
function deleteRow(r) {
    var i = r.parentNode.parentNode.rowIndex;
    document.querySelector(".table-body").deleteRow(i);
}
tableRow.forEach((row) => {
    var removeBtn = row.querySelector('.remove-wrapper');
    var removeLink = row.querySelector('.remove-item-link');
    removeLink.addEventListener('click', (e) => {
        // e.preventDefault();
    })
    removeBtn.addEventListener("click", () => {
        deleteRow(row);
    })
})

const itemList = [];
tableRow.forEach((row) => {
    itemList.push(row);
})
//Get total amount of item in cart
const computeTotalAmount = () => {
    var totalAmount = itemList.reduce((total, item) => {
        var amount = item.querySelector('.quantity').value;
        amount = parseInt(amount)
        return total + amount;
    }, 0)
    return totalAmount;
}
document.querySelector('.amount-item').innerHTML = computeTotalAmount();

//Get totalA price of all item in the cart

const computeTotalPrice = () => {
    var totalPrice = itemList.reduce((sum, item) => {
        var price = item.querySelector('.item-price').innerHTML.split('.000 VNĐ');
        price = parseInt(price[0]);
        return sum + price;
    }, 0)
    return totalPrice;
}
tableRow.forEach((rowItem) => {
    const minusAction = rowItem.querySelector('.minus-action');
    const plusAction = rowItem.querySelector('.plus-action');
    var quantity = rowItem.querySelector('.quantity').value;
    var originalPrice = rowItem.querySelector('.original-price').value;
    rowItem.querySelector('.original-price').value = formatMoney(parseInt(originalPrice) / 1000)
    rowItem.querySelector('.item-price').innerHTML = formatMoney(parseInt(originalPrice) / 1000)
    minusAction.onclick = () => {
        quantity--;
        if (quantity < 1)
            return;
        var price = rowItem.querySelector('.original-price').value.split('.000 VNĐ');
        rowItem.querySelector('.quantity').value = quantity;
        var finalPrice = quantity * parseInt(price[0]);
        console.log(price)

        rowItem.querySelector('.item-price').innerHTML = formatMoney(finalPrice);
        document.querySelector('.total-price').innerHTML = formatMoney(computeTotalPrice())
        document.querySelector('.final-price').innerHTML = formatMoney((computeTotalPrice() - (computeTotalPrice() * 0.1)))

    }
    plusAction.onclick = () => {
        quantity++;
        rowItem.querySelector('.quantity').value = quantity;
        console.log(price);
        var price = rowItem.querySelector('.original-price').value.split('.000 VNĐ');
        price = parseInt(price[0]);
        console.log(price);
        var finalPrice = quantity * price;
        var original = rowItem.querySelector('.original-price').value;
        console.log(original)
        rowItem.querySelector('.item-price').innerHTML = formatMoney(finalPrice);
        document.querySelector('.total-price').innerHTML = formatMoney(computeTotalPrice())
        document.querySelector('.final-price').innerHTML = formatMoney((computeTotalPrice() - (computeTotalPrice() * 0.1)))

    }
})
document.querySelector('.total-price').innerHTML = formatMoney(computeTotalPrice())
document.querySelector('.final-price').innerHTML = formatMoney((computeTotalPrice() - (computeTotalPrice() * 0.1)))

// tableRow is a variable that contains the item in the cart
// Get value of each row item (name => ID , quantity,total price of all items in the cart) then put into the array.
// After that , that array will be a value of input tag with hidden type 
var itemStorage = new Array();
var btnSubmit = document.querySelector('.btn-submit-action')
var listItem = document.querySelector('.hiddenList');
btnSubmit.onclick = (e) => {
    tableRow.forEach((item, index) => {
        // Data will be save as a string like pattern "name-quantity-price"
        var nameItem = item.querySelector('.item-name').innerHTML;
        var price = item.querySelector('.item-price').innerHTML;
        var quantity = item.querySelector('.quantity').value;
        price = price.split('.000')
        var finalPrice = parseInt(price[0]) * 1000
        var storageStringItem = nameItem + "-" + quantity + "-" + finalPrice
        itemStorage.push(storageStringItem)


    })
    listItem.value = itemStorage
    console.log(listItem);
    var totalPrice = document.querySelector(('.totalPrice'));
    var finalPrice = document.querySelector('.final-price').innerHTML;
    finalPrice = finalPrice.split(' VND')
    totalPrice.value = parseInt(finalPrice[0]) * 1000;

}
//tableRow.forEach((item, index) => {
//    // Data will be save as a string like pattern "name-quantity-price"
//    var nameItem = item.querySelector('.item-name').innerHTML;
//    var quantity = item.querySelector('.quantity').value;
//    var price = item.querySelector('.item-price').innerHTML;
//    price = price.split('.000')
//    var finalPrice = parseInt(price[0]) * 1000
//    var storageStringItem = nameItem + "-" + quantity + "-" + finalPrice
//    itemStorage.push(storageStringItem)
//})
console.log(typeof itemStorage);


console.log(totalPrice.value);