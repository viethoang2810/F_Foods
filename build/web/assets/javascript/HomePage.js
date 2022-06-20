const btnBar = document.querySelector('.btn-bar');
const navList = document.querySelector('.navigation-block');
var countClick = 1;
// navList.style.display = 'none';
btnBar.addEventListener('click', () =>{
    countClick++;
    if(countClick%2  === 0)navList.style.display = 'block';
    else navList.style.display = 'none';
})
const userBtn = document.querySelector('.account-infor');
var click = 1 ;
userBtn.onclick = () =>{
    click++;
    console.log(click);
    if(click%2  === 0)document.querySelector('.logout-wrapper').style.display = 'block';
    else document.querySelector('.logout-wrapper').style.display = 'none';
}