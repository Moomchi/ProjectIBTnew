const buyButton = document.querySelector('.buyTicket');
const submitButton = document.querySelector('.submitButton');
const orderButton = document.querySelector('.orderButton');
let reviewNameIsEmpty = true;
let reviewTextIsEmpty = true;
let paymentNameIsEmpty = true;
let paymentAdressIsEmpty = true;
let paymentQuantityIsEmpty = true;
let paymentContainerDisplay = false;
let reviewSectionDisplay = true;

buyButton.addEventListener('click', openBuyPanel);
submitButton.addEventListener('click', submit);
orderButton.addEventListener('click',order);

function openBuyPanel(){
	if(!paymentContainerDisplay){
		document.getElementById("paymentContainer").style.display = "block";
		paymentContainerDisplay = true;
	} else {
		document.getElementById("paymentContainer").style.display = "none";
		paymentContainerDisplay = false;
	}
	openReviewSection();
}

function openReviewSection(){
	if(reviewSectionDisplay){
		document.getElementById("rsection").style.display = "none";
		reviewSectionDisplay = false;
	} else {
		document.getElementById("rsection").style.display = "block";
		reviewSectionDisplay = true;
	}
}

function submit(){
	reviewNameIsEmpty = document.getElementById('reviewName').value.length == 0;
	reviewTextIsEmpty = document.getElementById('review').value.length == 0;
	if(!(reviewNameIsEmpty || reviewTextIsEmpty)){
		const p = document.createElement('p');
		let reviewName = document.querySelector('#reviewName');
		let review = document.querySelector('#review');
		p.innerText = "'" + review.value + "'"+ " -" +reviewName.value;
		document.querySelector('#container').appendChild(p);
		document.getElementById('reviewName').value = '';
		document.getElementById('review').value = '';
	} else {
		alert('Invalid review input!');
	}
}

function order(){
	paymentNameIsEmpty = document.getElementById('orderName').value.length == 0;
	paymentAdressIsEmpty = document.getElementById('adress').value.length == 0;
	paymentQuantityIsEmpty = document.getElementById('quantity').value.length == 0;
	let paymentQuantity = document.getElementById('quantity').value;
	if(!(paymentNameIsEmpty || paymentAdressIsEmpty || paymentQuantityIsEmpty ) &&
		(paymentQuantity>0 && paymentQuantity<=10)){
		let orderName = document.querySelector('#orderName');
		let adress = document.querySelector('#adress');
		let quantity = document.querySelector('#quantity');
		alert('Order sent successfully! Thank you, ' + orderName.value + ', for your purchase!');
		document.getElementById('orderName').value = '';
		document.getElementById('adress').value = '';
		document.getElementById('quantity').value = '';
		openBuyPanel();
	} else {
		alert('Invalid order input!');
	}
}