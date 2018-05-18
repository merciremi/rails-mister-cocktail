import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Should I drink a Bourbon Sour?", "Or a Pink Flamingo may be...", "A Dirty Wagon?", "Is there such thing as a Green Rake"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
