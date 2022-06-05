class CupCalls {

  String? name;
  String? status;
  String? date;
  bool isCall = true;

  CupCalls({
    this.name,
    this.status,
    this.date,
    required this.isCall,
});

}


List <CupCalls>cupCallsData = <CupCalls>[

  CupCalls(name: 'Khushal',date: '24/03/22',status: 'Outgoing',isCall: true),
  CupCalls(name: 'Khushal',date: '23/03/22',status: 'Incoming',isCall: true),
  CupCalls(name: 'Khushal',date: '15/03/22',status: 'Outgoing',isCall: true),
  CupCalls(name: 'Khushal',date: '10/02/22',status: 'Missed',isCall: true),
  CupCalls(name: 'Khushal',date: '05/02/22',status: 'Outgoing',isCall: true),
  CupCalls(name: 'Khushal',date: '24/01/22',status: 'Incoming',isCall: true),
  CupCalls(name: 'Khushal',date: '24/01/22',status: 'Missed',isCall: true),
  CupCalls(name: 'Khushal',date: '24/01/22',status: 'Outgoing',isCall: false),
  CupCalls(name: 'Khushal',date: '23/12/21',status: 'Incoming',isCall: true),
  CupCalls(name: 'Khushal',date: '22/12/21',status: 'Outgoing',isCall: true),
  CupCalls(name: 'Khushal',date: '24/11/21',status: 'Outgoing',isCall: true),
  CupCalls(name: 'Khushal',date: '10/11/21',status: 'Outgoing',isCall: false),
  CupCalls(name: 'Khushal',date: '25/10/21',status: 'Incoming',isCall: false),
  CupCalls(name: 'Khushal',date: '30/10/21',status: 'Outgoing',isCall: true),
  CupCalls(name: 'Khushal',date: '29/09/21',status: 'Missed',isCall: true),
  CupCalls(name: 'Khushal',date: '02/09/21',status: 'Outgoing',isCall: false),


];




class Chats {


  String? msg;
  String? time;

  Chats({
    this.msg,
    this.time,
  });

}

List <Chats>cupChatsData = <Chats>[


  Chats(msg: 'typing...',time: '12:24 PM'),
  Chats(msg: 'Photo',time: '11:55 AM'),
  Chats(msg: 'Okay 🙂',time: '11:50 AM'),
  Chats(msg: 'Photo',time: '11:51 AM'),
  Chats(msg: 'Byee',time: '11:53 AM'),
  Chats(msg: 'Byee',time: '11:45 AM'),
  Chats(msg: 'Photo',time: '11:40 AM'),
  Chats(msg: 'Okay 🙂',time: '11:38 AM'),
  Chats(msg: 'Byee',time: '10:23 AM'),
  Chats(msg: 'Okay 🙂',time: '09:53 AM'),
  Chats(msg: 'Photo',time: '08:24 PM'),
  Chats(msg: 'good morinig',time: 'yesterday'),
  Chats(msg: 'good morinig...',time: 'yesterday'),
  Chats(msg: 'good morinig...',time: 'yesterday'),
  Chats(msg: 'good morinig...',time: 'yesterday'),
  Chats(msg: 'good morinig...',time: 'yesterday'),


];