const account = document.querySelector('.admin-account');
const accountLogout = document.querySelector('.account-admin-detail');
var clickTiming = 1 //count the time of click on a element
account.onclick = () => {
    clickTiming++;
    if (clickTiming % 2 === 0) {
        accountLogout.style.display = 'block';
    } else {
        accountLogout.style.display = 'none';
    }
}
//Handle the modal of CRUD features 
const createBtn = document.querySelector('.create-btn');
const createModal = document.querySelector('.modal-wrapper');
const closeIcon = document.querySelector('.close-icon');
console.log(createModal);
createBtn.onclick = () => {
    createModal.style.display = 'flex';
}

closeIcon.addEventListener('click', () => {
    createModal.style.display = 'none';
})

window.addEventListener('click', (event) => {
    if (event.target === createModal) {
        createModal.style.display = 'none';
    }
})

const tableRow = document.querySelectorAll('.row-food-detail');

tableRow.forEach((row) => {
    var removeIcon = row.querySelector('.remove');
    var editIcon = row.querySelector('.edit');
    var removeModal = row.querySelector('.modal-remove');
    var editModal = row.querySelector('.modal-edit');
    console.log(removeModal);
    removeIcon.addEventListener('click', () => {
        removeModal.style.display = 'flex';
    })

    editIcon.addEventListener('click', () => {
        editModal.style.display = 'flex';
    })

    window.addEventListener('click', (event) => {
        if (event.target === removeModal || event.target === editModal) {
            removeModal.style.display = 'none';
            editModal.style.display = 'none';

        }
    })
})
//Process form data at update field 

 // Create our number formatter.
 var formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'vnd',
    // These options are needed to round to whole numbers if that's what you want.
    //minimumFractionDigits: 0, // (this suffices for whole numbers, but will print 2500.10 as $2,500.1)
    //maximumFractionDigits: 0, // (causes 2500.99 to be printed as $2,501)
  });

tableRow.forEach((rowData) => {
    var foodName = rowData.querySelector('.food-name').innerHTML;
    var originalPrice = rowData.querySelector('.food-price').innerHTML;
    var discountFood = rowData.querySelector('.food-discount').innerHTML ;
    var finalPrice = rowData.querySelector('.food-final-price').innerHTML
    //Assign the value of td tags for the update fields input 
    rowData.querySelector('#foodName').value = foodName;
    rowData.querySelector('#price').value = originalPrice ;
    rowData.querySelector('#discount').value = discountFood ;
    rowData.querySelector('#finalPrice').value = formatter.format((parseInt(originalPrice) - parseInt(discountFood)));
})
var totalIncome = document.querySelector('.item-infor-money');
const hiddenIncome = document.querySelector('.income-hidden').value;
function formatMoney(n) {
    var priceFormat;
    if (n >= 1000) {
        priceFormat = Math.round(n / 1000) + ".";
        var unit = n - Math.round(n / 1000) * 1000;
        if (unit >= 10 && unit <= 99) priceFormat += "0" + unit;
        else if (unit >= 0 && unit <= 9) priceFormat += "00" + unit;
        else priceFormat += unit;
    } else priceFormat = n;
    return priceFormat + " VNĐ";
}
totalIncome.innerHTML= formatMoney(parseInt(hiddenIncome));
console.log(totalIncome);