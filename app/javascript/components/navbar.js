const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.sebnavbar-lewagon');
  const icon = document.querySelector('#nav-icon span');
  const navicon = document.querySelector('#nav-icon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('seb-white');
        // navicon.remove();
        icon.classList.add('icon-black');
      } else {
        navbar.classList.remove('seb-white');
        icon.classList.remove('icon-black');
      }
    });
  }
}

const toggle = () => {
  const icon = document.querySelector('#nav-icon span');
  const iconBlack = document.querySelector('#icon-black span');
  const hi = document.querySelector('hi');
  const bigDiv = document.querySelector('.navbar');
  const overlay = document.querySelector('.overlay-nav-open')
  icon.addEventListener('click',switchVisible);
  function switchVisible(event) {
    bigDiv.classList.remove('navbar');
    bigDiv.classList.add('overlay-nav-open');
    document.getElementById('nav-icon').id = "icon-black";
    document.querySelector('.linear').classList.add('switched')
    // hi.classList.add('icon-black');
  }
  iconBlack.addEventListener('click',switchHide);
   function switchHide(){
     overlay.classList.remove('overlay-nav-open');
     overlay.classList.add('navbar');
     document.getElementById('icon-black').id = "nav-icon"
  }
}

export { toggle } ;
export { initUpdateNavbarOnScroll };
