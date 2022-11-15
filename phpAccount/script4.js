
let seconds = 15;
const countdownEl= document.getElementById('countdown');

const interval = setInterval(updateCountdown,1000);
function updateCountdown()

{
	seconds--;
	seconds = seconds < 10 ? '0' + seconds : seconds;
	countdownEl.innerHTML = `${seconds}`;
	if(seconds =='00'){
		countdownEl.innerHTML = `${seconds}`;
		clearInterval(interval);
		location.replace('final4.php');
	}
}