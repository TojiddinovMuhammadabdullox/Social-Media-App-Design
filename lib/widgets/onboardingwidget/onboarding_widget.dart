class OnboardingWidget {
  final String image;
  final String about;
  final String description;

  OnboardingWidget({
    this.image = '',
    this.about = '',
    this.description = '',
  });
}

List<OnboardingWidget> widgets = [
  OnboardingWidget(
    image: 'assets/onboarding/first.png',
    about: "Welcome To The Fun Magic Media",
    description:
        "Dummy text is also used to demonstrate the appearance of different typefaces and layouts",
  ),
  OnboardingWidget(
    image: 'assets/onboarding/second.png',
    about: "Best Social App To Make New Friends",
    description:
        "Dummy text is also used to demonstrate the appearance of different typefaces and layouts",
  ),
  OnboardingWidget(
    image: 'assets/onboarding/third.png',
    about: "Enjoy Your Life Every Time",
    description:
        "Dummy text is also used to demonstrate the appearance of different typefaces and layouts",
  ),
];
