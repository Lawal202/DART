void main() async{

DataService dataService = DataService();
String data = await dataService.getData();
print(data);

}

class DataService{

  Future<String> getDataFromCloud() async{
    //get data from cloud -> time
    //return

    await Future.delayed(Duration(seconds:4));
    print("get data finished");
    return"fake data";
  }

  Future<String> parseDataFromCloud({required String dataFromCloud}) async{
    //get data from cloud -> time
    //return

    await Future.delayed(Duration(seconds:2));
    print("parse data finished");
    return"parsed data";
  }

  Future getData() async{
    //final String dataFromCloud = await _getDataFromCloud();
    //final String parsedData = await _parseDataFromCloud(dataFromCloud: dataFromCloud);
          //get data -> time
    //parse data -> time
    //return data

    //alternative
    final String parsedData = 
    await getDataFromCloud().then((dateFromCloud) async{return await parseDataFromCloud(dataFromCloud: 'dataFromCloud');
    });
    return parsedData;
  }
}