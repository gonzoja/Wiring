/**
 * CharacterAnalysis
 * by Tom Igoe
 * 
 * Examples using the character analysis operators.
 * Send any byte and the sketch will tell you about it.
 */

void setup()
{
  // Open serial communications:
  Serial.begin(9600);

  // send an intro:
  Serial.println("send any byte and I'll tell you everything I can about it");
  Serial.println();
}

void loop()
{
  // get any incoming bytes:
  if (Serial.available() > 0)
  {
    int thisChar = Serial.read();

    // say what was sent:
    Serial.print("You sent me: \'");
    Serial.write(thisChar);
    Serial.print("\'  ASCII Value: ");
    Serial.println(thisChar);

    // analyze what was sent:
    if (isAlphaNumeric(thisChar))
    {
      Serial.println("it's alphanumeric");
    }
    if (isAlpha(thisChar))
    {
      Serial.println("it's alphabetic");
    }
    if (isAscii(thisChar))
    {
      Serial.println("it's ASCII");
    }
    if (isWhitespace(thisChar))
    {
      Serial.println("it's whitespace");
    }
    if (isControl(thisChar))
    {
      Serial.println("it's a control character");
    }
    if (isDigit(thisChar))
    {
      Serial.println("it's a numeric digit");
    }
    if (isGraph(thisChar))
    {
      Serial.println("it's a printable character that's not whitespace");
    }
    if (isLowerCase(thisChar))
    {
      Serial.println("it's lower case");
    }
    if (isPrintable(thisChar))
    {
      Serial.println("it's printable");
    }
    if (isPunct(thisChar))
    {
      Serial.println("it's punctuation");
    }
    if (isSpace(thisChar))
    {
      Serial.println("it's a space character");
    }
    if (isUpperCase(thisChar))
    {
      Serial.println("it's upper case");
    }
    if (isHexadecimalDigit(thisChar))
    {
      Serial.println("it's a valid hexadecimaldigit (i.e. 0 - 9, a - F, or A - F)");
    }

    // add some space and ask for another byte:
    Serial.println();
    Serial.println("Give me another byte:");
    Serial.println();
  }
}





