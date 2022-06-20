const listOfMoreImage = document.querySelectorAll('.image-wrapper');
const imageDisplay = document.querySelector('.description-image');
listOfMoreImage.forEach((image) => {
    console.log(getImageDisplay(imageDisplay))
    image.addEventListener('click', () => {
        var imageLink = image.querySelector('img');
        imageDisplay.src = imageLink.src;
    })
})

