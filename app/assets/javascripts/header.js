document.addEventListener('DOMContentLoaded', (event) => {
  let menu = document.querySelector('.menu');
	let burger = document.querySelector('#burger');

	burger.addEventListener('click', function(e){
		if(menu.getAttribute('class') != 'visible'){
			menu.setAttribute('class', 'visible');
		}else {
			menu.setAttribute("class", "notVisible");
		}
		
	});

	let menuLinks = document.getElementsByTagName("li");

	for(let i = 0; i < menuLinks.length; i++ ){
		menuLinks[i].addEventListener('click', function(){
			if(menu.getAttribute('class') == 'visible'){
				menu.setAttribute('class', 'notVisible');
			}
		})
	}
})
