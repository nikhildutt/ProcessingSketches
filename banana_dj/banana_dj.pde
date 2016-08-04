import ddf.minim.*;       
Minim minim = new Minim(this); 

 //We're going to use BANANAS to stop and start songs. Different bananas will play different songs.
//If you haven't used the Makey Makey before, check out this guide before you start: http://makeymakey.com/howto.php
 
 // 1. Download a song from YouTube using: youtube-mp3.org
 // 2. Plug the Makey Makey into the bananas.
 //3. Finish the Processing code below so that touching a banana will start and stop a song.
 
 AudioPlayer yellowSubmarine;              //1. Change to the name of your song
 boolean yellowSubmarineIsStopped = true; 
 AudioPlayer blueSubmarine;              //1. Change to the name of your song
 boolean blueSubmarineIsStopped = true; 
 AudioPlayer redSubmarine;
 boolean redSubmarineIsStopped = true; 
 AudioPlayer greenSubmarine;
 boolean greenSubmarineIsStopped = true;
 
 void loadSongs() {
 yellowSubmarine = minim.loadFile("S.mp3");  //2. Drop mp3 onto this sketch and put its name here
 blueSubmarine = minim.loadFile("D.mp3");  //2. Drop mp3 onto this sketch and put its name here
 redSubmarine = minim.loadFile("Q.mp3");  //2. Drop mp3 onto this sketch and put its name here
  greenSubmarine = minim.loadFile("W.mp3");  //2. Drop mp3 onto this sketch and put its name here
 }
 
 void keyPressed() {
 
 if (keyCode == UP) {
/* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
    if (yellowSubmarineIsStopped) {
    playSong(yellowSubmarine);
    yellowSubmarineIsStopped = false;
    }
/* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
    else {
    stopSong(yellowSubmarine);
    yellowSubmarineIsStopped = true;
    }
}
if (keyCode == DOWN) {
/* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
  if (blueSubmarineIsStopped) {
  playSong(blueSubmarine);
  blueSubmarineIsStopped = false;
}
/* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
else {
  stopSong(blueSubmarine);
  blueSubmarineIsStopped = true;
}

}

if (keyCode == RIGHT) {
/* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
  if (redSubmarineIsStopped) {
  playSong(redSubmarine);
  redSubmarineIsStopped = false;
}
/* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
else {
  stopSong(redSubmarine);
  redSubmarineIsStopped = true;
}
}

if (keyCode == LEFT) {
/* 3. If yellowSubmarineIsStopped, play it, and set yellowSubmarineIsStopped to false. */
  if (greenSubmarineIsStopped) {
  playSong(greenSubmarine);
  greenSubmarineIsStopped = false;
}
/* 4. Otherwise, stop it, and set yellowSubmarineIsStopped to true. */
else {
  stopSong(greenSubmarine);
  greenSubmarineIsStopped = true;
}
}

/* 5. Add other songs for the other bananas. keyCode will tell you which banana was pressed. */
println("you pressed " + keyCode);
}

void playSong(AudioPlayer song) {
  song.play();
}

void stopSong(AudioPlayer song)
{
  song.pause();
}

void draw() {
}

void setup() {
  loadSongs();
}




