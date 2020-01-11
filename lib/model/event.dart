class Event{
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;
  final int woId;

  Event(
    {
      this.imagePath,
      this.title,
      this.description,
      this.location,
      this.duration,
      this.punchLine1,
      this.punchLine2,
      this.categoryIds,
      this.galleryImages,
      this.woId
    }
  );
}

final soulMateWO = Event(
    woId: 0,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "Soul Mate Wedding Organizer",
    description: "pernikahan dengan tema Soul Mate Weding Organizer ini menggunakan perpaduan warna hitam dan emas yang menciptakan nuansa yang lebih glamor dan tetap perfecsionis .....",
    location: "Medan, Hotel Classic 3",
    duration: "1 D",
    punchLine1: "SoulMate W.O ",
    punchLine2: "Best Wo ever after",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 1, 2, 3]
    );

final wtfWO = Event(
    woId: 1,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "What The Fun Wedding Organizer",
    description: "What The Fun Weding Organizer membuat semua pihat semua mata terhipnotis dengan keindahan konsep yang sanggat menggoda ini....",
    location: "Loksumawe, Hotel RedTide",
    duration: "1D",
    punchLine1: "Moga Samawa Ya  W.O",
    punchLine2: "Auto Samawa",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 3]
    );

final missPlanerWO = Event(
    woId: 2,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "Miss Planer Wedding Organizer",
    description: "Cost of Glory merupakan konsep acara yang dapat melemahkan jiwa sehingga terhanyut dalam indahnya acara yang dibalut dengan ...",
    location: "Jakarta, Hotel Telus",
    duration: "1D",
    punchLine1: "Jiwa Malasku Meronta  W.O",
    punchLine2: "Semoga Malasku Hilang",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 4, 2, 3]
    );

final bantuNikahWO = Event(
    woId: 3,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "Bantu Nikah Wedding organizer",
    description: "Nyatakan keindahan pernikahan anda bagaikan stardust yang menerangi langit malam",
    location: "Mars, Hotel Elder Star",
    duration: "1D",
    punchLine1: "Cantik Ganteng  W.O",
    punchLine2: "Waduh Cantiknya ",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 5, 2, 3, 6]
    );

final bestPlanerWO = Event(
  woId: 4,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "Best Planer Weding Organizer",
    description: "Mysto Caster Nyatakan kekuatan cinta yang selama ini terpendam",
    location: "Djokjakarta, Hotel Earth Guard",
    duration: "1D",
    punchLine1: "BladeCity  W.O",
    punchLine2: "GG nih",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 3, 5]
    );

final ivoraWO = Event(
    woId: 5,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "Ivory Weding Organizer",
    description: "Single ButterFly, wujudkan segala keinginan anda dalam waktu yang singkat ini",
    location: "Unknown, Hotel Legendary elf",
    duration: "1D",
    punchLine1: "Cute Girl  W.O",
    punchLine2: "Babang Nopal Bahenol",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 5, 3,6]
    );

final qadaWO = Event(
    woId: 6,
    imagePath: "assets/weding_image/wedingOrganizer.jpg",
    title: "Qada Weding Organizer",
    description: "Lunar Dissecor, matap nih buat RPK",
    location: "Medan, Hotel Thousand Streams",
    duration: "1D",
    punchLine1: "ASPD W.O",
    punchLine2: "shadow Escape",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 1, 5]
    );

final events = [
  soulMateWO,
  missPlanerWO,
  wtfWO,
  ivoraWO,
  bantuNikahWO,
  qadaWO,
  bestPlanerWO
];