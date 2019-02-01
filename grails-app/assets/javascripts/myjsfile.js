// document.getElementById('addbutton').addEventListener('click', function(){
//   document.querySelector('.bg-modal').style.display="flex";
// });
// document.querySelector('.close').addEventListener('click',function(){
//   document.querySelector('.bg-modal').style.display="none";
// });

//get modal element
var modal = document.getElementById('form-modal');

//get open modal button
var addbutton = document.getElementById('addbutton');

//get close button
var closebtn = document.getElementsByClassName('closebtn')[0];



//listen for click
addbutton.addEventListener('click', openModal);

//listen for click in close button
closebtn.addEventListener('click', closeModal);

//listen for outside click
window.addEventListener('click', clickOutside);

//function to open openModal
function openModal (){
  modal.style.display = "block";
}
//function to close Modal
function closeModal(){
  modal.style.display="none";
}
//function to close due to outside click
function clickOutside(e){
  if(e.target == modal){
      modal.style.display="none";
  }

}
