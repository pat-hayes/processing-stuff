import java.io.*;
import java.util.*;
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
    background(#FFFFFF);
    textSize(32);
    fill(0, 0, 0);
    int x = 100;
    int y = 100;
    //while( x <= 800 && y <= 400) {
      word(3, "noun", x, y);
      /*if(x > 800) {
        x = 100;
        y += 100;
      }*/
      ans = "";
    //}
    //prevAns.clear();
  }
}
