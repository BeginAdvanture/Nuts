
	
	let text = document.getElementById("text");
	let leaf = document.getElementById('leaf');
	let hill1 = document.getElementById('hill1');
	let hill4 = document.getElementById('hill4');
	let hill5 = document.getElementById('hill5');
	

let handleScroll = () => {
    let value = window.scrollY;

    // 스크롤 위치에 따라 요소들의 위치 조정
    text.style.marginTop = value * 2.5 +'px';
    leaf.style.top = value * -1.5 +'px';
    leaf.style.left = value * 1.5 +'px';
    hill5.style.left = value * 1.5 +'px';
    hill4.style.left = value * -1.5 +'px';
    hill1.style.left = value * 1 +'px';

    // 스크롤 위치가 600이상이 되면 스크롤 이벤트 제거
    if(value >= 300){
        window.removeEventListener('scroll', handleScroll);
    }
};

// 스크롤 이벤트 추가
window.addEventListener('scroll', handleScroll);

// 스크롤 위치가 300 이하로 내려가면 스크롤 이벤트 다시 추가
window.addEventListener('scroll', ()=>{
    let value = window.scrollY;
    if(value < 300){
        window.addEventListener('scroll', handleScroll);
    }
});



const wrapper = document.querySelector('.wrapper');
const loginLink = document.querySelector('.login-link');
const registerLink = document.querySelector('.register-link');

const btnPopup = document.querySelector('.btnLogin-popup');
const iconClose = document.querySelector('.icon-close');

registerLink.addEventListener('click',()=>{
    wrapper.classList.add('active');
});

loginLink.addEventListener('click',()=>{
    wrapper.classList.remove('active');

});

btnPopup.addEventListener('click',()=>{
    wrapper.classList.add('active-popup');
});
iconClose.addEventListener('click',()=>{
    wrapper.classList.remove('active-popup');
});





let mainText = document.querySelector('#event');
let ticking = false;

window.addEventListener("scroll", function() {
    
    if (!ticking) {
        window.requestAnimationFrame(function() {
        let value = window.scrollY;
        console.log("scrollY",value);
        if (value < 3000) {
            mainText.style.animation = "disappear 1s ease-out forwards";
        }
        else if(value > 3700){
            mainText.style.animation = "disappear 1s ease-out forwards";
        }
        else{
            mainText.style.animation = "slide 1s ease-out"
        }
        ticking = false;
        });
        ticking = true;
    }
});

