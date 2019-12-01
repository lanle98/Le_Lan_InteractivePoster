(() => {
  let svg = document.querySelector(".svg-graphic");

  let name = document.querySelector(".name");
  let description = document.querySelector(".description");
  let radius = document.querySelector(".radius");
  let area = document.querySelector(".area");
  let temperature = document.querySelector(".temperature");
  let modal = document.querySelector(".modal");
  let modalContent = document.querySelector(".modal-content");

  //get data from mysql
  function getData(e) {
    e.preventDefault();
    // movetoCenter(this);
    let url = `/planet/${this.getAttribute("href")}`;
    fetch(url)
      .then(res => res.json())
      .then(data => {
        console.log(data);
        parseData(data);
      });
  }

  //generate random number
  function random(min, max) {
    let random = Math.random() * (max - min) + min;
    console.log(random);
    return random;
  }

  //parse data into DOM
  function parseData(planet) {
    modalContent.style.background = `#${planet.color}`;
    name.innerHTML = planet.name;
    description.innerHTML = planet.description;
    radius.innerHTML = `Radius: ${planet.radius}`;
    temperature.innerHTML = `Temperature: ${planet.temperature}`;
    area.innerHTML = `Area: ${planet.area}`;
    modal.classList.add("show");
  }

  //close lightbox
  function closeLightBox() {
    modal.classList.remove("show");
  }

  //move planet to center
  function movetoCenter(element) {
    let path = svgDoc.querySelectorAll("#path");
    console.log("triggered:" + element);
    console.log("path:" + path);
  }

  //load svg file
  svg.addEventListener("load", function() {
    let svgDoc = svg.contentDocument;
    let planets = svgDoc.querySelectorAll(".planet");
    let path = svgDoc.querySelectorAll("#path");

    //animation loop
    for (let i = 0; i < planets.length; i++) {
      console.log("index:" + i);
      gsap.registerPlugin(MotionPathPlugin);
      gsap.to(planets[i], {
        duration: random(5, 10),
        ease: "linear",
        repeat: -1,
        yoyo: true,
        motionPath: {
          path: path[i],
          align: "self",
          start: -0.2,
          end: 0.2
        }
      });
    }

    //animation for satelite

    //event click on each planet
    planets.forEach((planet, index) => {
      planet.addEventListener("click", getData);
    });
  });

  modal.addEventListener("click", closeLightBox);
})();
