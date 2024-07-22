class UserManagement{
  void sayName(User user){
    print(user.name);
  }

  void calculateMoney(List<User> users){
    int sum =0;
    for(var item in users){
      sum+=item.money;
    }
    int sumMoney  = users.map((e) => e.money).fold(0, (previousValue, element) => previousValue+element); 
    print(sum);
  }
}

class User{
  final String name;
  final String id;
  final int money;

  User(this.name, this.id, this.money);
}