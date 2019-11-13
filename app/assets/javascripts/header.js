$(document).on('turbolinks:load', function(){
	window.onload = function () { 
		let menu = document.querySelector('.menu');
		let burger = document.querySelector('#burger');

		burger.addEventListener('click', function(e){
			if(menu.getAttribute('class') != 'visible'){
				menu.setAttribute('class', 'visible');
			}else {
				menu.setAttribute("class", "notVisible");
			}
			e.preventDefault();
		});
	}
});