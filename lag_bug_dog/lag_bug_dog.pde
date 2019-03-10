import java.io.*;
import java.util.*;
int x = 100;
int y = 100;
int count = 0;
boolean done = false;
String vowels = "aeiouy";
String consonants = "bcdfghjklmnpqrstvwxz";
ArrayList<String> vArray = new ArrayList<String>(6);
String ans = "";
ArrayList<String> prevAns = new ArrayList<String>();
String str;
String[] wordsArray;
ArrayList<String> words = new ArrayList<String>();
ArrayList<String> threeLetterWords= new ArrayList<String>();

void setup(){
  size(800, 500);
  background(#FFFFFF);
  File file = new File("C:\\Users\\c3po7\\Documents\\GitHub\\processing-stuff\\lag_bug_dog\\english5000.txt");
  wordsArray = loadStrings(file);
  for(int i = 0;i < wordsArray.length;i++){
    words.add(wordsArray[i]); 
  }
  for(int i = 0;i<words.size();i++){
    if(words.get(i).length() == 3) threeLetterWords.add(words.get(i));  
  }
}
public boolean isV(String c) {
  for(int i = 0;i < vArray.size();i++)
    vArray.add(vowels.substring(i, i + 1));
  for(String d : vArray) {
    if(d.equals(c)) return true;
  }
  return false;
}
void draw() {
}
void keyPressed() {
  if(key == ENTER) {
    boolean done = false;
    ans = word(3);
    while(!done) {
      if(threeLetterWords.indexOf(ans) != -1){ // Checks if the word is a real three letter word
        if(prevAns.indexOf(ans) == -1){ // Checks if the word has not already been returned
          textSize(64);
          fill(0, 0, 0);
          if(x == 100 && y == 100) {
                        background(#FFFFFF);
                      }
          text(ans, x, y);
          prevAns.add(ans);
          x += 200;
          if(x > 500) {
            x = 100;
            y += 100;
            if(y > 450) {
              x = 100;
              y = 100;
            }
          }
          ans = "";
          done = true;
        }
        else { ans = ""; ans = word(3); }
      }
      else { ans = ""; ans = word(3); }
    }
    prevAns.clear();
  }
  if(prevAns.size() > 139) prevAns.clear();
}
