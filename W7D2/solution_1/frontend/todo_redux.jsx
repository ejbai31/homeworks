import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);


  // store.dispatch = configureStore(preloadedState);
  // store = applyMiddleWares(store, addLoggingToDispatch);
});



// const addLoggingToDispatch = (store) => {
//   const originDispatch = store.dispatch;
//   return (action) => {
//     console.log(store.getState());
//     console.log(action);
//     originDispatch(action);
//     console.log(store.getState());
//   };
// };

// const addLoggingToDispatch = store => next => action => {
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState());
// };

// const applyMiddleWares = (store, ...middleWares) => {
//   let dispatch = store.dispatch;
//   middleWares.forEach((middleWare) => {
//     dispatch = middleWare(store)(dispatch);
//   });
//   return Object.assign({}, store, {dispatch});
// };