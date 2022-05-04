
class CoachCategory{
  String name;
  String imgName;
  String typeScreen;
  CoachCategory({
    required this.name,
    required this.imgName,
    required this.typeScreen,
});

}

List<CoachCategory> coachcategoryList=[
  CoachCategory(name: "Football", imgName: "football.jpg",typeScreen:"football"),
  CoachCategory(name: "Basketball", imgName: "basketball.jpg",typeScreen:"basketball"),
  CoachCategory(name: "Gym", imgName: "gym.jpg",typeScreen:"gym"),
  CoachCategory(name: "Swim", imgName: "swim.jpg",typeScreen:"swim"),
];
