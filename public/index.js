/* global axios */

axios.get("http://localhost:3000/actors").then(function (response) {
  var actors = response.data;
  console.log(actors);
});
