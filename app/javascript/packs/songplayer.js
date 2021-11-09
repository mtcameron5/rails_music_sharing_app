// function paintIt(element, backgroundColor, textColor) {
//   element.style.backgroundColor = backgroundColor;
//   if (textColor) {
//     element.style.color = textColor;
//   }
// }

// window.addEventListener("load", () => {
//   const links = document.querySelectorAll(
//     "a[data-background-color]"
//   );
//   console.log
//   links.forEach((element) => {
//     element.addEventListener("click", (event) => {
//       event.preventDefault();

//       const {backgroundColor, textColor} = element.dataset;
//       paintIt(element, backgroundColor, textColor);
//     });
//   });
// });
console.log("songPlayer js file loaded")

// window.addEventListener("load", () => {
//   let playButtons = document.querySelectorAll("a[music-file]");
//   playButtons.forEach((playButton) => {
//     let musicFilePath = playButton.getAttribute('music-file')
//     let artist = playButton.getAttribute('artist')
//     let genre = playButton.getAttribute('genre')
//     let title = playButton.getAttribute('title')
//     playButton.addEventListener("click", (event) => {
//       event.preventDefault();

//       setMusicPlayerAttributes(musicFilePath, artist, genre, title);
//     })
//   })
// })

// // artist=<%= song.artist %> genre=<%= song.genre %> title
// function setMusicPlayerAttributes(songPath, artist, genre, title) {
//   musicPlayer = document.getElementById('music-player');
//   musicPlayer.setAttribute('src', String(songPath));
//   musicPlayerArtist = document.getElementById('song-playing-artist');
//   musicPlayerArtist.innerHTML = artist;
//   musicPlayerTitle = document.getElementById('song-playing-title');
//   musicPlayerTitle.innerHTML = title;
//   console.log(title);
//   musicPlayerGenre = document.getElementById('song-playing-genre');
//   musicPlayerGenre.innerHTML = genre;
// }
// song-playing-artist
// song-playing-genre
// song-playing-title
// var music = document.getElementById("music-player");
// var playButton = document.getElementById("play");
// var pauseButton = document.getElementById("pause");
// var playhead = document.getElementById("elapsed");
// var timeline = document.getElementById("slider");
// var timer = document.getElementById("timer");
// var duration;



// music.addEventListener("timeupdate", timeUpdate, false);

// function timeUpdate() {
//   var timelineWidth = timeline.offsetWidth - playhead.offsetWidth;
// 	var playPercent = timelineWidth * (music.currentTime / duration);
// 	playhead.style.width = playPercent + "px";

// 	var secondsIn = Math.floor(((music.currentTime / duration) / 3.5) * 100);
// 	if (secondsIn <= 9) {
// 		timer.innerHTML = "0:0" + secondsIn;
// 	} else {
// 		timer.innerHTML = "0:" + secondsIn;
// 	}
// }
// // playButton.onclick
// playTheSong = function() {
//   console.log('playButton clicked')
// 	music.play();
// 	playButton.style.visibility = "hidden";
// 	pause.style.visibility = "visible";
// }

// pauseButton.onclick = function() {
// 	music.pause();
// 	playButton.style.visibility = "visible";
// 	pause.style.visibility = "hidden";
// }

// music.addEventListener("canplaythrough", function () {
// 	duration = music.duration;
// }, false);