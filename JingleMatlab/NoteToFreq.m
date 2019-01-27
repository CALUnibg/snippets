function f = NoteToFreq(note)
switch note
    case 'c'
        f = 130.8*2;
    case 'c#'
        f = 138.6*2;
    case 'd'
        f = 146.8*2;
    case 'd#'
        f = 155.6*2;
    case 'e'
        f = 164.8*2;
    case 'f'
        f = 174.6*2;
    case 'f#'
        f = 185*2;
    case 'g'
        f = 196*2;
    case 'g#'
        f = 207.7*2;
    case 'a'
        f = 220*2;
    case 'a#'
        f = 233.1*2;
    case 'b'
        f = 246.9*2;
    otherwise
        f = 0;
end