const updateQuantity = (item, order) => {
  // fetch to see the quantity of items in that order with the id of the order and the item
  // select the correct number in red
  // update the correct number in red
  console.log(item);
  console.log(order);
}

const initCards = () => {
  const buttons = document.querySelectorAll('.plus')
  buttons.forEach((button) => {
    button.addEventListener('click', (event) => {
      updateQuantity(button.dataset.item, button.dataset.order)
    })
  })
}

export { initCards };
