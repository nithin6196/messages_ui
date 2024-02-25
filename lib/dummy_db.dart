class DummyDb {
  static List chatList = [
    {
      "name": "Elisa",
      "last_message": "Good morning",
      "count": 3,
      "profile_pic":
          "https://images.pexels.com/photos/40192/woman-happiness-sunrise-silhouette-40192.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "01:00"
    },
    {
      "name": "Chris",
      "last_message": "Hey there",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/852793/pexels-photo-852793.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "12:40"
    },
    {
      "name": "Alice",
      "last_message": "message",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "01:00"
    },
    {
      "name": "Bob",
      "last_message": "Hello!",
      "count": 5,
      "profile_pic":
          "https://images.pexels.com/photos/691919/pexels-photo-691919.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "02:30"
    },
    {
      "name": "Charlie",
      "last_message": "Good morning!",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/1666779/pexels-photo-1666779.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "03:45"
    },
    {
      "name": "David",
      "last_message": "How are you?",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/90764/man-studio-portrait-light-90764.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "05:15"
    },
    {
      "name": "Eva",
      "last_message": "Hi!",
      "count": 2,
      "profile_pic":
          "https://images.pexels.com/photos/1921168/pexels-photo-1921168.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "07:20"
    },
    {
      "name": "Frank",
      "last_message": "Nice to meet you!",
      "count": 4,
      "profile_pic":
          "https://images.pexels.com/photos/1172207/pexels-photo-1172207.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "09:30"
    },
    {
      "name": "Grace",
      "last_message": "What's up?",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/1898555/pexels-photo-1898555.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "11:45"
    },
    {
      "name": "Henry",
      "last_message": "See you later!",
      "count": 2,
      "profile_pic":
          "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "13:10"
    },
    {
      "name": "Ivy",
      "last_message": "I'm here!",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/1755385/pexels-photo-1755385.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "15:25"
    },
    {
      "name": "Jack",
      "last_message": "Good night!",
      "count": 2,
      "profile_pic":
          "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "17:40"
    },
    {
      "name": "Katherine",
      "last_message": "Hola!",
      "count": 0,
      "profile_pic":
          "https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?auto=compress&cs=tinysrgb&w=600",
      "time": "19:55"
    }
  ];

  static List activeList = [...chatList]..shuffle();
}
