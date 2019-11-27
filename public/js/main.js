(() => {
  let svg = document.querySelector(".svg-graphic");

  svg.addEventListener("load", function() {
    let svgDoc = svg.contentDocument;
    let sun = svgDoc.querySelector("#sun");

    let planets = svgDoc.querySelectorAll(".planet");

    planets.forEach(planet =>
      planet.addEventListener("click", function() {
        console.log("clicked");
      })
    );
  });

  function getData(e) {
    e.preventDefault();

    let url = `/planet/1`;

    fetch(url)
      .then(res => res.json())
      .then(data => {
        console.log(data);
      });
  }

  getData();
})();
