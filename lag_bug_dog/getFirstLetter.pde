// This method chooses the first letter based on some proportions I found online
private int rand;
public String getFirstLetter() {
  rand = (int)random(0, 15501);
  if(rand < 1229) { return "a"; } rand -= 1229;
  if(rand < 599) { return "b"; } rand -= 599;
  if(rand < 1317) { return "c"; } rand -= 1317;
  if(rand < 640) { return "d"; } rand -= 640;
  if(rand < 634) { return "e"; } rand -= 634;
  if(rand < 435) { return "f"; } rand -= 435;
  if(rand < 458) { return "g"; } rand -= 458;
  if(rand < 582) { return "h"; } rand -= 582;
  if(rand < 524) { return "i"; } rand -= 524;
  if(rand < 152) { return "j"; } rand -= 152;
  if(rand < 205) { return "k"; } rand -= 205;
  if(rand < 512) { return "l"; } rand -= 512;
  if(rand < 914) { return "m"; } rand -= 914;
  if(rand < 353) { return "n"; } rand -= 353;
  if(rand < 524) { return "o"; } rand -= 524;
  if(rand < 1788) { return "p"; } rand -= 1788;
  if(rand < 242) { return "q"; } rand -= 242;
  if(rand < 532) { return "r"; } rand -= 532;
  if(rand < 1620) { return "s"; } rand -= 1620;
  if(rand < 952) { return "t"; } rand -= 952;
  if(rand < 188) { return "u"; } rand -= 188;
  if(rand < 412) { return "v"; } rand -= 412;
  if(rand < 299) { return "w"; } rand -= 299;
  if(rand < 94) { return "x"; } rand -= 94;
  if(rand < 75) { return "y"; } rand -= 75;
  if(rand < 221) { return "z"; } rand -= 221;
  return ".";
}
