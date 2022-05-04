class CoachList{
  String name;
  String Starttime;
  String Endtime;
  String imgName;
  String typecoach;

  CoachList({
    required this.name,
    required this.Starttime,
    required this.Endtime,
    required this.imgName,
    required this.typecoach,
  });
}

List<CoachList> coachlist=[
  CoachList(name: "Bashar",Starttime:"8",Endtime: "2", imgName: "https://static.wikia.nocookie.net/friends/images/f/f5/JoeyTribbiani.jpg/revision/latest?cb=20180424154245",typecoach: "football"),
  CoachList(name: "Abd",Starttime:"8",Endtime: "2", imgName: "https://static.wikia.nocookie.net/friends/images/f/f5/JoeyTribbiani.jpg/revision/latest?cb=20180424154245",typecoach: "football"),
  CoachList(name: "Mustafa",Starttime:"8",Endtime: "2", imgName: "https://static.wikia.nocookie.net/friends/images/f/f5/JoeyTribbiani.jpg/revision/latest?cb=20180424154245",typecoach: "football"),
  CoachList(name: "Majdy",Starttime:"8",Endtime: "2", imgName: "https://static.wikia.nocookie.net/friends/images/f/f5/JoeyTribbiani.jpg/revision/latest?cb=20180424154245",typecoach: "basketball"),
  CoachList(name: "Omar",Starttime:"8",Endtime: "2", imgName: "https://static.wikia.nocookie.net/friends/images/f/f5/JoeyTribbiani.jpg/revision/latest?cb=20180424154245",typecoach: "swim"),
];
