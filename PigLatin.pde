import java.util.*;

public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  char[] vowels = {'a', 'e', 'i', 'o' , 'u'};
	for(int i = 0; i<sWord.length(); i++) {
	 for(char temp : vowels) {
	  if(sWord.charAt(i) == temp) {
	   return i;
	  }
	 }
	}	
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(sWord.length() > 0) {
		if(findFirstVowel(sWord) == -1)
		{
			return sWord + "ay";
		}
		else if(findFirstVowel(sWord) == 0){
			sWord = sWord + "way";
			return sWord;
		}
		else if(findFirstVowel(sWord) > 0) {
			char firstConsonant = sWord.charAt(0);
			String newStr = sWord.substring(1,sWord.length());
			newStr = newStr + firstConsonant;
			return newStr;
		}
		if(sWord.length() >=2){
			if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u') {
				String newStr = sWord.substring(2,sWord.length());
				newStr = newStr + "quay";
				return newStr;
			}
		}
  }
  return "Error!";
}


