import Typed from 'typed.js';

function loadDynamicBannerText() {
  const banner = document.getElementById('banner-typed-text')
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Banner"],
      typeSpeed: 45,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
