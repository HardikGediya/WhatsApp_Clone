class Chats {
  String? name;
  String? subTitle;
  String? img;
  String? time;

  Chats({
    this.img,
    this.name,
    this.subTitle,
    this.time,
  });
}

Chats chats = Chats();

List<Chats> chatsData = <Chats>[
  Chats(
    name: 'Khushal',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShihMNggQw8xIQnEXUDRWA2yImD76ZAcvPQ&usqp=CAU',
    time: '9:20 am',
  ),
  Chats(
    name: 'Sanket',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2K9s_OFS_T6T7StQSAn00kFzf0aqGoy4GgA&usqp=CAU',
    time: '8:22 am',
  ),
  Chats(
    name: 'Meet Malaviya',
    subTitle: 'Hello',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyvHGp14CvJyWf53Q0HzXgv4vfI8b-z3cfdA&usqp=CAU',
    time: '12:29 PM',
  ),
  Chats(
    name: 'Future flutter',
    subTitle: 'Viraj: 🙂',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Fw4MdbYWuy30FbbuXKLb--ib-fdP2C3j53ImbcfEmdt1qgMdW01MAdXegp6VhugrqK8&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Jenil',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeZnX9jX1yaV8afdRUqiwrJMOzv6-d5lo6svjXwU20IKwf7HmEWXzdJlL_lIR4amkJTY0&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'RW4 Boys',
    subTitle: '+91 94098 72976',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOdZTT2RW7xk3W2rG7aDkRHw_M5qE8whpwQ&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Pratik',
    subTitle: 'Ok',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8E8jh1L6V3ywqwH7TUa8e__icEVHWH4DCyw&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Meet Malaviya',
    subTitle: 'Hello',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyvHGp14CvJyWf53Q0HzXgv4vfI8b-z3cfdA&usqp=CAU',
    time: '12:29 PM',
  ),
  Chats(
    name: 'Future flutter',
    subTitle: 'Viraj: 🙂',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Fw4MdbYWuy30FbbuXKLb--ib-fdP2C3j53ImbcfEmdt1qgMdW01MAdXegp6VhugrqK8&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Jenil',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeZnX9jX1yaV8afdRUqiwrJMOzv6-d5lo6svjXwU20IKwf7HmEWXzdJlL_lIR4amkJTY0&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Khushal',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShihMNggQw8xIQnEXUDRWA2yImD76ZAcvPQ&usqp=CAU',
    time: '9:20 am',
  ),
  Chats(
    name: 'Sanket',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2K9s_OFS_T6T7StQSAn00kFzf0aqGoy4GgA&usqp=CAU',
    time: '8:22 am',
  ),
  Chats(
    name: 'Future flutter',
    subTitle: 'Viraj: 🙂',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Fw4MdbYWuy30FbbuXKLb--ib-fdP2C3j53ImbcfEmdt1qgMdW01MAdXegp6VhugrqK8&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Jenil',
    subTitle: 'Photo',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeZnX9jX1yaV8afdRUqiwrJMOzv6-d5lo6svjXwU20IKwf7HmEWXzdJlL_lIR4amkJTY0&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'RW4 Boys',
    subTitle: '+91 94098 72976',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtOdZTT2RW7xk3W2rG7aDkRHw_M5qE8whpwQ&usqp=CAU',
    time: 'Yesterday',
  ),
  Chats(
    name: 'Pratik',
    subTitle: 'Ok',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8E8jh1L6V3ywqwH7TUa8e__icEVHWH4DCyw&usqp=CAU',
    time: 'Yesterday',
  ),
];

class Status {
  String? name;
  String? time;
  String? img;

  Status({
    this.img,
    this.name,
    this.time,
  });
}

Status status = Status();

List<Status> statusData = <Status>[
  Status(
    name: 'My status',
    time: 'Tap to add status update',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShihMNggQw8xIQnEXUDRWA2yImD76ZAcvPQ&usqp=CAU',
  ),
  Status(
    name: 'Rwn Bansil',
    time: 'Today, 8:17 am',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFSr-Xw193zjxyJ4r7QbwpICwi8lD-jNTIxw&usqp=CAU',
  ),
  Status(
    name: 'Rutvik Solanki',
    time: 'Today, 7:42 am',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaSxrLgy1JmO8_K45BPJhcjJDuzHbGkoADlQ&usqp=CAU',
  ),
  Status(
    name: 'Gajera Harsh',
    time: 'Today, 7:10 am',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQip4BN1feni9TJ2ZPd60m0ND1Dt6xi1GpXyg&usqp=CAU',
  ),
  Status(
    name: 'Jenil',
    time: 'Today, 7:03 am',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJJrXZsKwenc3MBDyYDCHSoKZrFRYsLizJvw&usqp=CAU',
  ),
  Status(
    name: 'Yash Ginoya',
    time: 'Yesterday, 11:35 pm',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQNHwuCPK5ElLWizpDY02T71wS9AHSjCV0mA&usqp=CAU',
  ),
  Status(
    name: 'Pankaj Dabhi',
    time: 'Yesterday, 12:35 pm',
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJe5kNQ-f4fkMez7XUiYhG1L7v3d9onIF_ZQ&usqp=CAU',
  ),

];

class Calls {
  String? name;
  String? img;
  String? time;
  bool out = true;

  Calls({
    this.img,
    this.name,
    this.time,
    required this.out,
  });
}

List<Calls> callsData = <Calls>[
  Calls(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQShihMNggQw8xIQnEXUDRWA2yImD76ZAcvPQ&usqp=CAU',
    time: "27 minute ago",
    name: 'Khushal',
    out: false,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFRFWd1CRvB9IDEwKOVfNeBKubwbvr5RaAQ&usqp=CAU',
    time: "4 April, 11:08 am",
    name: 'Sanket',
    out: true,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCUuIm26B_xK3kSkCSxMc4seq4w8FwNW9NqQ&usqp=CAU',
    time: "3 April, 10:03 am",
    name: 'Jenil',
    out: true,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSEEeb3rkSXxCqtrvjpu6ucXEZ0B-bmYShjQ&usqp=CAU',
    time: "3 June, 10:03 am",
    name: 'Rutvik',
    out: true,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrHMRppK_LZYyuT4oErBdyayo0GpfkkQ_q2g&usqp=CAU',
    time: "3 Feb, 10:03 am",
    name: 'Darshanbhai Maru',
    out: false,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFRFWd1CRvB9IDEwKOVfNeBKubwbvr5RaAQ&usqp=CAU',
    time: "3 April, 10:03 am",
    name: 'Khushal',
    out: true,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJFRFWd1CRvB9IDEwKOVfNeBKubwbvr5RaAQ&usqp=CAU',
    time: "3 Feb, 12:03 pm",
    name: 'Khushal',
    out: false,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJg4Wf6FCGcXQE1P-gX6Jni6ji9eZ5n2EzLw&usqp=CAU',
    time: "3 March, 08:03 am",
    name: '+91 95748 77831',
    out: true,
  ),
  Calls(
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT23gXEP4MSCxkEo6LBgXCZ5NxOyqnjiFeslw&usqp=CAU',
    time: "22 March, 11:03 am",
    name: 'Sanket B. Tech',
    out: false,
  ),
];
