import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  if (messagesContainer) {
    const id = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        // console.log(data); // called when data is broadcast in the cable

        // What should I do with the broadcasted message?
        // If this is JS code?

        // We should insertAdjacentHTML so that the new message appears in the DOM
        messagesContainer.insertAdjacentHTML("beforeend", data);

        // To-Do: Improve the User Experience by using JavaScript code
        // to scroll down to the end of the page
      },
    });
  }
}

export { initChatroomCable };