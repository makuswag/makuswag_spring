window.onload = function() {
    var loggedIn = document.querySelector('meta[name="loggedIn"]').getAttribute('content') === 'true';
    var userId = document.querySelector('meta[name="userId"]').getAttribute('content');
    var listItems = document.querySelectorAll('.list-item');

    listItems.forEach(function(item) {
        var authorId = item.querySelector('.date').innerText.trim();

        if (loggedIn) {
            if (authorId !== userId) {
                item.querySelector('.post-link').addEventListener('click', function(event) {
                    event.preventDefault();
                    alert("접근 권한이 없습니다.");
                });
            }
        } else {
            item.querySelector('.post-link').addEventListener('click', function(event) {
                event.preventDefault();
                alert("로그인 후에 이용 가능합니다.");
            });
        }
    });
};
