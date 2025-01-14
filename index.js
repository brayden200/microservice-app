async function checkStatus() {
    try {
        const response = await fetch('/status');
        const data = await response.json();
        document.getElementById('status').innerText = data.status;
    } catch (error) {
        console.error('Error fetching status:', error);
        document.getElementById('status').innerText = 'Error connecting to the service.';
    }
}

window.onload = checkStatus;
