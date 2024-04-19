document.querySelector('#ingredients-sidebar input[type="text"]').addEventListener('input', function (e) {
    var searchTerm = e.target.value.toLowerCase();
    document.querySelectorAll('#ingredients-sidebar .ingredient-button').forEach(function (button) {
        if (button.textContent.toLowerCase().includes(searchTerm)) {
            button.style.display = 'inline-block';
        } else {
            button.style.display = 'none';
        }
    });
});