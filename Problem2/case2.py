import re


def frequency(
    text: str, 
    n: int,
    case_sensitive: bool = False
) -> dict[str, int]:

    '''
    Given an integer n and a string _text_,
    returns the n most frequent words in text.

    Args:
        text (str):
            Input string, must have at least one word.
        n (int):
            Input integer for number of frequencies.
        case_sensitive (bool):
            Boolean for case sensitivity. Defaults False
    
    Returns:
        dict[str, int]:
            n most frequent words in text input string

    '''

    if len(text) <= 0:
        raise ValueError("At least one word is required.")

    if n <= 0:
        raise ValueError("Number of words must be greater than zero.")

    # Remove non alphabetical chars 
    text = re.sub(r'[^a-z A-Z]','', text)
    
    if case_sensitive == False:
        text = text.upper()
    # Get words ('SPACE' separator) as a set
    #   only unique words
    words = set(text.split(' '))

    result = {}
    for word in words:

        # Get number of occurrences for each word
        # Ensures 'SPACE' for both sides to match words, 
        #   not substrings
        matches = re.findall(f" {word} ".upper(), f" {text} ".upper())
        # store values
        result[word] = len(matches)

    # Sort dict by value (not key)
    # Get the first n words stored
    result = sorted(
        result.items(), 
        key=lambda item: item[1], 
        reverse=True
    )[0:n]

    return dict(result)


if __name__ == "__main__":

    result = frequency(
        "This is a Klavi test from Klavi. A Klavi test. Best Regards, Klavi.", 
        5,
        case_sensitive=True
    )

    for key in result.keys():

        print(f"word '{key}' appears {result[key]} time(s)!")