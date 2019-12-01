(() => {
  let svg = document.querySelector(".svg-graphic");

  svg.addEventListener("load", function() {
    let satelite = svg.contentDocument.querySelectorAll(".satelite");
    console.log(satelite);
    radius = 150;
    let moon = satelite[0];
    console.log(moon);
    TweenMax.to(moon, 5, {
      bezier: [
        { left: 100, top: 250 },
        { left: 300, top: 0 },
        { left: 500, top: 400 }
      ],
      ease: Power1.easeInOut
    });
  });
})();
