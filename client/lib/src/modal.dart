import 'dart:html';

DivElement modal;
DivElement msgContainer;

void initModalElems([DivElement modalElem, DivElement msgContainerElem]) {
  modal = modalElem ?? document.querySelector("#modal");
  msgContainer = msgContainerElem ?? modal.querySelector("#messageContainer");
  document
      .querySelector("#screenCover")
      .onClick
      .listen((_) => modal.style.display = "none");
}

void showModal(Element msg) {
  msgContainer.children.last = msg..className += " modalMessage";
  modal.style.display = "flex";
}
