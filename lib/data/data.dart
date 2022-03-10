class AppData {
  static List<OnBoardingItem> get onBoardingItems {
    List<OnBoardingItem> items = [];
    items.add(
      OnBoardingItem(
        '  Empowering Artisans,  Farmers & Micro Business',
        'onBoarding1.png',
      ),
    );
    items.add(
      OnBoardingItem(
        'Connecting NGOs, Social Enterprises with Communities',
        'onBoarding2.png',
      ),
    );
    items.add(
      OnBoardingItem(
        'Donate, Invest & Support infrastructure projects',
        'onBoarding3.png',
      ),
    );
    return items;
  }
}

class OnBoardingItem {
  final String title;
  final String imageFileName;

  OnBoardingItem(this.title, this.imageFileName);
}
