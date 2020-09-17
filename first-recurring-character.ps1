function FirstRecurringCharacter($foo){
    if ($foo.Length -lt 2) {
        return "Error. The string length was not long enough, to determine a recurring character";
    }

    $letters = @(0) * 128;

    For ($i=0; $i -lt $foo.Length; $i++) {
        $letters[[byte][char]$foo[$i]]++;

        if($letters[[byte][char]$foo[$i]] -eq 2){
            return $foo[$i];
        }
    }

    return "None of the characters in the string is recurring";
}