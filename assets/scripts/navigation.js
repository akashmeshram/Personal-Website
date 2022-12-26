const navigation = document.getElementsByTagName("nav")[0];
const hamburger = document.getElementById("toggle");
hamburger.addEventListener("click", function (e) {
  navigation.classList.toggle("mobile-display");
});
