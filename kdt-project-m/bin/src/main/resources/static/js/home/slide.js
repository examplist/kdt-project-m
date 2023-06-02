let positionIndex = 0;
const countSlide = 5;

const $btnLeft = document.querySelector('.btn-left');
const $btnRight = document.querySelector('.btn-right');
const $container = document.querySelector('.slide-container');

$btnLeft.onclick = (e) => {
	positionIndex++;
	if (positionIndex > 0) {
		positionIndex = -countSlide + 1;
	}
	const position = (positionIndex * 100) / countSlide;
	$container.style.transform = `translateX(${position}%)`;
};

$btnRight.onclick = (e) => {
	positionIndex--;
	if (positionIndex < -countSlide + 1) {
		positionIndex = 0;
	}
	const position = (positionIndex * 100) / countSlide;
	$container.style.transform = `translateX(${position}%)`;
};

addEventListener('resize', () => {
	for (const $slide of $container.children) {
		$slide.style.width = '100%';
	}
});
