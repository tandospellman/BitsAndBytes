var coll = document.getElementsByClassName("collapsible");
var coll2 = document.getElementsByClassName("innerCollapsible");
var i, j;


for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.maxHeight) {
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight * 2 + "px";
        }
    });
}


for (j = 0; j < coll2.length; j++) {
    coll2[j].addEventListener("click", function () {
        this.classList.toggle("innerActive");
        var innerContent = this.nextElementSibling;
        if (innerContent.style.maxHeight) {
            innerContent.style.maxHeight = null;
        } else {
            innerContent.style.maxHeight = innerContent.scrollHeight + "px";
        }
    });
}


