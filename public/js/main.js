// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link'),
        lightbox = document.querySelector('.lightbox');

        function renderCooktime(cookTime) {
            return `<ul class="u-social">
                        ${cookTime.map(item => `<li>${item}</li>`).join('')}
                    </ul>`
        }

        function parseUserData(food){ //food is the database result
            let targetDiv = document.querySelector('.lb-content'),
                targetImg = lightbox.querySelector('img');
            
                let bioContent = `
                <h1>${food.foodName}</h1>
                <p>${food.ingredients}</p>
                <h2>${food.calories}</h2>
                <h4>Cooktime:</h4>
                ${renderCooktime(food.cooktime)}
                `;

                console.log(bioContent);

                targetDiv.innerHTML = bioContent;
                targetImg.src = food.imgsrc;

                lightbox.classList.add('show-lb');


        }
        
        function getUserData(event) {
            event.preventDefault(); // kill the default a tag behaviour (dont navigate anywhere)
            // debugger;
            //find the image closest to the anchor tag
            let imgSrc = this.previousElementSibling.getAttribute('src');
            let url =`/users/${this.getAttribute('href')}`; // /3

            fetch(url)// go get data
                .then(res => res.json()) //parse the json result into a plain object
                .then(data => {
                    console.log(" my database result is: ", data)

                    data[0].imgsrc = imgSrc;

                    parseUserData(data[0]);
                })
                .catch((err) => {
                    console.log(err)
                });
        }

        userButtons.forEach(button => button.addEventListener('click', getUserData))//when click on link we get database info
            
        lightbox.querySelector('.close').addEventListener('click', function() {
            lightbox.classList.remove('show-lb');
    });
})();