public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";

public void setup(){
    for(int i = 2; i <= e.length() - 10; i++){
        String s = e.substring(i, i + 10);
        long number = Long.parseLong(s);
        if(isPrime(number)){
            text(s, width/2, height/2);
            return;
        }
    }
}

public boolean isPrime(long num){
    if(num < 2){
        return false;
    }
    for(long i = 2; i <= Math.sqrt(num); i++){
        if (num % i == 0){
            return false;
        }
    }
    return true;
}
