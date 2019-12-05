let svg1 = document.querySelector('#waypoint'),
    svg2 = document.querySelector('#waypoint1'),
    svg3 = document.querySelector('#waypoint2'),
    svg4 = document.querySelector('#waypoint3'),
    svg5 = document.querySelector('#waypoint4'),
    svg6 = document.querySelector('#waypoint5');
    container = document.querySelector('.container');

    var waypoint = new Waypoint({
        element: document.querySelector('#waypoint'),
        handler: function(direction) {
            console.log('scrolled to waypoint')

            svg1.classList.toggle('revealFacts');
            svg1.classList.remove('hide');
        },
        offset: 0
    });

    var waypoint1 = new Waypoint({
        element: document.querySelector('#waypoint1'),
        handler: function(direction) {
            console.log('scrolled to waypoint')

            svg2.classList.toggle('revealFacts');
            svg2.classList.remove('hide');
        },
        offset: -300
    });

    var waypoint2 = new Waypoint({
        element: document.querySelector('#waypoint2'),
        handler: function(direction) {
            console.log('scrolled to waypoint')

            svg3.classList.toggle('revealFacts');
            svg3.classList.remove('hide');
        },
        offset: -400
    });

    var waypoint3 = new Waypoint({
        element: document.querySelector('#waypoint3'),
        handler: function(direction) {
            console.log('scrolled to waypoint')

            svg4.classList.toggle('revealFacts');
            svg4.classList.remove('hide');
        },
        offset: -900
    });

    var waypoint4 = new Waypoint({
        element: document.querySelector('#waypoint4'),
        handler: function(direction) {
            console.log('scrolled to waypoint')

            svg5.classList.toggle('revealFacts');
            svg5.classList.remove('hide');
        },
        offset: -1600
    });

    var waypoint5 = new Waypoint({
        element: document.querySelector('#waypoint5'),
        handler: function(direction) {
            console.log('scrolled to waypoint')

            svg6.classList.toggle('revealFacts');
            svg6.classList.remove('hide');
        },
        offset: -2100
    });

    const btn = document.querySelectorAll('.see-more'),
            lightbox = document.querySelector('.lightbox');

            function showlightbox(consoleInfo, el){
                lightbox.querySelector('.consoleName').textContent = `${consoleInfo.console}`;
                lightbox.querySelector('.consoleDate').textContent = `${consoleInfo.date}`;
                lightbox.querySelector('.consoleSold').textContent = `${consoleInfo.sold}`;
                lightbox.querySelector('.consoleDesc').textContent = `${consoleInfo.description}`;

            }

            function fetchData(){
                let targetEl = this,
                    url = `/svgData/${this.dataset.target}`;

                    fetch(url)
                    .then(res => res.json())
                    .then(data => {
                        console.log(data);

                        showlightbox(data, targetEl);
                    })
                    .catch((err) => console.log(err));
                    lightbox.classList.add('showlightbox');
                    lightbox.classList.add('showInfo');
            }

            btn.forEach(btn => btn.addEventListener("click", fetchData));

            lightbox.addEventListener("animationend", function() {
                lightbox.classList.remove('showInfo');
            });