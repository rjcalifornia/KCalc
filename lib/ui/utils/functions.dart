class Functions {
  Future buttonPressed(String buttonText) async {
    //print(buttonText);
    String doesContainDecimal(dynamic result) {
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
      }
      return result;
    }

    if (buttonText == "AC") {
      //test = "0";

      //result = "0";
    }
  }
}
