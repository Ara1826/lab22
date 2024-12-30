export default class inputValidator{
    constructor(responseCode, message) {
        this.responseCode = responseCode;
        this.message = message;
    }
    validate(xVal, yVal, rVal){
        if (!(-2 <= xVal && xVal <= 4)){
            this.message = "The X value should be something from this array: [-2, -1, 0, 1, 2, 3, 4]";
            this.responseCode = 0;
        } else if (!(-5 < yVal && yVal < 3)){
            this.message = "The Y value should be in (-5, 3) interval";
            this.responseCode = 0;
        } else if (!(1 < rVal && rVal < 4)){
            this.message = "The R value should be in (1, 4) interval";
            this.responseCode = 0;
        } else {
            this.responseCode = 1;
        }
    }

    validateR(rVal) {
        if (!(1 < rVal && rVal < 4)){
            this.message = "The R value should be in (1, 4) interval";
            this.responseCode = 0;
        } else {
            this.responseCode = 1;
        }
    }

    getResponseCode(){
        return this.responseCode;
    }
    getMessage(){
        return this.message;
    }
}