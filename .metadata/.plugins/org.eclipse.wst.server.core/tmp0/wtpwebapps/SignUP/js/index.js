
let contacts = new Map()
contacts.set('india', '+918888888888')
contacts.set('usa', '+44 1632 960846')
contacts.set('canada', '+1 202 555 0156')
contacts.set('germany', '+49-163-5556-667')

document.getElementById('nation-select').addEventListener('change', () => {
    let country = document.getElementById('nation-select').value;
    document.getElementById('ph-number').innerHTML = contacts.get(country);
    document.getElementById('flag-icon').src = `images/${country}.jpg`;
})

document.getElementById("scrollUp").classList.add("hide");
getYPosition = () => {
    var top = window.pageYOffset || document.documentElement.scrollTop
    return top;
};

document.addEventListener('scroll', () => {
    let scroll = getYPosition();
    let arrow = document.getElementById('scrollUp');
      
    scrolled = () => {
        window.scroll({
            top: 0,
            left: 0,
            behavior: 'smooth'
        });
    }

    // navigation bar sticky
    if(scroll < 50){
        document.getElementById("header-sticky").classList.remove("sticky-bar");
    } else {
        document.getElementById("header-sticky").classList.add("sticky-bar");
    }

    // scrollup button visibility
    if(scroll > 800){
        arrow.classList.remove("hide");
        arrow.classList.add("show");
        arrow.addEventListener('click', scrolled);
    } else {
        document.getElementById('scrollUp').classList.remove('show');
        document.getElementById('scrollUp').classList.add('hide');
        document.getElementById('scrollUp').removeEventListener("click", scrolled);
    }
})