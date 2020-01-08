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
  const bigDiv = document.querySelector('.navbar');
  icon.addEventListener('click',switchVisible);
  function switchVisible(event) {
    bigDiv.classList.remove('navbar');
    bigDiv.classList.add('switched');
  }
}

export { toggle } ;
export { initUpdateNavbarOnScroll };
