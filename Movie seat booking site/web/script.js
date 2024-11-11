const totalPriceEl = document.getElementById('total-price');
const seatInfoEl = document.getElementById('seat-info');

let selectedSeats = [];

function selectSeat(seat) {
  if (!seat.classList.contains('reserved')) {
    seat.classList.toggle('selected');
    const seatId = seat.getAttribute('data-seat');

    if (seat.classList.contains('selected')) {
      selectedSeats.push(seatId);
    } else {
      selectedSeats = selectedSeats.filter(id => id !== seatId);
    }
    
    updateSeatInfo();
    calculateTotal();
  }
}// Function to show the notification
function showNotification() {
  document.getElementById("notification").style.display = "block";
  document.getElementById("overlay").style.display = "block";
}

// Function to hide the notification
function hideNotification() {
  document.getElementById("notification").style.display = "none";
  document.getElementById("overlay").style.display = "none";
}

function reserveSeats() {
  document.querySelectorAll('.seat.selected').forEach(seat => {
    seat.classList.remove('selected');
    seat.classList.add('reserved');
    seat.onclick = null;  // Disable onclick for reserved seats
  });
  
  selectedSeats = [];
  updateSeatInfo();
  calculateTotal();
}

function calculateTotal() {
  let total = 0;
  document.querySelectorAll('.seat.selected').forEach(seat => {
    total += parseInt(seat.getAttribute('data-price'));
  });
  totalPriceEl.innerText = `[${total}]`;
}

function updateSeatInfo() {
  if (selectedSeats.length > 0) {
    seatInfoEl.innerText = 'Seat Info: ' + selectedSeats.join(', ');
  } else {
    seatInfoEl.innerText = 'Seat Info: None';
  }
}
