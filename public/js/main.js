// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.dessert-link'),
        lightBox = document.querySelector('.lightbox');

    // create the Price list
    function renderDesssertPrice(dessertPrice) {
        return `<ul class="u-dessert">
                    ${dessertPrice.map(item => `<li>${item}</li>`).join('')}
                </ul>`
    }
    function parseUserData(sweetTreat) {// person is the database result
        let targetDiv = lightBox.querySelector('.lb-content'),
        targetImg = lightBox.querySelector('img');

        let dessertContent = `
        <h3>FLAVOUR</h3>
        <p>${sweetTreat.flavour}</p>

        <h3>PRICE</h3>
        ${renderDesssertPrice(sweetTreat.price)}

        <h3>ABOUT</h3>
        <p>${sweetTreat.about}</p>

        <h3>LOCATION</h3>
        <p>${sweetTreat.location}</p>
        `;

        targetDiv.innerHTML = dessertContent;
        targetImg.src = sweetTreat.currentSrc;

        lightBox.classList.add('show-lb');
    }

    function getUserData(event) {
        event.preventDefault();
        // debugger;
       //1,2, or 3 depending on which anchor tag you click
     
        let url = `/users/${this.getAttribute(`href`)}`,
        currentImg = this.previousElementSibling.getAttribute('src');


        // this goes and fecthes the database content (or an API end point)
        // That's why it's called a fetch!
        fetch(url)
            .then(res => res.json()) 
            .then(data => {
                console.log(data);

                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) =>
                console.log(err));
    }
  
userButtons.forEach(button => button.addEventListener('click', getUserData));

//wire up the lightbox close button
lightBox.querySelector('.close').addEventListener('click', function() {
    lightBox.classList.remove('show-lb');
});

})();