sortFilter(dynamic arr){
  if(arr.length > 1) {
    int mid = arr.length ~/ 2;
    List<dynamic> leftList = [];
    List<dynamic> rightList = [];

    for (int index_arr = 0; index_arr < mid; index_arr++) {
      leftList.add(arr[index_arr]);
    }
    for (int index_arr = mid; index_arr < arr.length; index_arr++) {
      rightList.add(arr[index_arr]);
    }

    sortFilter(leftList);
    sortFilter(rightList);

    int i = 0;
    int j = 0;
    int k = 0;

    while (leftList.length > i && rightList.length > j) {
      var test = [leftList[i][0], rightList[j][0]];
      test.sort();

      if (test[0] == leftList[i][0]) {
        arr[k] = leftList[i];
        i++;
        k++;
      } else {
        arr[k] = rightList[j];
        j++;
        k++;
      }
    }
    while (leftList.length > i) {
      arr[k] = leftList[i];
      i++;
      k++;
    }
    while (leftList.length > j) {
      arr[k] = rightList[j];
      j++;
      k++;
    }
    return arr;
  }
}