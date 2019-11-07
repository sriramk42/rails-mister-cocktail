import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Mojito", "Shirley Temple"],
    typeSpeed: 100,
    loop: true,
    attr: 'placeholder'
  });
}

export { loadDynamicBannerText };
