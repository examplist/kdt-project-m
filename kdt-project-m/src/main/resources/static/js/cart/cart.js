import { products } from '../data/data.js';
// console.log(products[1]);
var chackBox = document.querySelectorAll('.chack');
var willbuy = document.querySelectorAll('.on');
var price = document.querySelector('.price>b');
var title = document.querySelector('.title');
var totalprint = document.querySelector('.total');

var total = 0;

for (var i = 0; i < chackBox.length; i++) {
	var item = chackBox.item(i);
	item.addEventListener('click', function () {
		//만약 src속성값이 check-box 이미지면
		if (item.getAttribute('src') == './assets/index/cart/check-box.png') {
			//src속성값 check-box-empty이미지로 변경
			item.setAttribute('src', './assets/index/cart/check-box-empty.png');
			//class 'on'지우기
			item.classList.remove('on');
		} else {
			//아니면 check-box이미지로 변경 후 'on' 클래스 주기
			item.setAttribute('src', './assets/index/cart/check-box.png');
			item.classList.add('on');
		}
	});
}

// var price = document.querySelector('.price');
var count = document.querySelector('.count');
// console.log(products[1].count);
count.innerHTML = products[1].count;
price.innerHTML = products[1].count * products[1].price;

totalprint.innerHTML = `${price.innerHTML}원`;

title.innerHTML = products[1].title;
