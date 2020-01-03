class Event{
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

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
    }
  );
}

final gloryMoonlight = Event(
    imagePath: "assets/weding_image/weding1.jpg",
    title: "Glory Moonlight",
    description: "pernikahan dengan tema glory moonlight ini menggunakan perpaduan warna hitam dan emas yang menciptakan nuansa yang lebih glamor dan tetap perfecsionis .....",
    location: "Medan, Hotel Classic 3",
    duration: "12h",
    punchLine1: "SoulMate W.O",
    punchLine2: "Best Wo ever after",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 1, 2, 3]
    );

final lotusIllusion = Event(
    imagePath: "assets/weding_image/weding2.jpg",
    title: "Lotus Illusion",
    description: "Lotus Illusion membuat semua pihat semua mata terhipnotis dengan keindahan konsep yang sanggat menggoda ini....",
    location: "Loksumawe, Hotel RedTide",
    duration: "12h",
    punchLine1: "Moga Samawa Ya  W.O",
    punchLine2: "Auto Samawa",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 3]
    );

final costOfGlory = Event(
    imagePath: "assets/weding_image/weding3.jpg",
    title: "Cost Of Glory",
    description: "Cost of Glory merupakan konsep acara yang dapat melemahkan jiwa sehingga terhanyut dalam indahnya acara yang dibalut dengan ...",
    location: "Jakarta, Hotel Telus",
    duration: "12h",
    punchLine1: "Jiwa Malasku Meronta  W.O",
    punchLine2: "Semoga Malasku Hilang",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 4, 2, 3]
    );

final flowingStardust = Event(
    imagePath: "assets/weding_image/weding4.jpg",
    title: "Flowing Stardusk",
    description: "Nyatakan keindahan pernikahan anda bagaikan stardust yang menerangi langit malam",
    location: "Mars, Hotel Elder Star",
    duration: "12h",
    punchLine1: "Cantik Ganteng  W.O",
    punchLine2: "Waduh Cantiknya ",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 5, 2, 3, 6]
    );

final mystoCaster = Event(
    imagePath: "assets/weding_image/weding5.jpg",
    title: "Mysto Caster",
    description: "Mysto Caster Nyatakan kekuatan cinta yang selama ini terpendam",
    location: "Djokjakarta, Hotel Earth Guard",
    duration: "12h",
    punchLine1: "BladeCity  W.O",
    punchLine2: "GG nih",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 3, 5]
    );

final singleButterfly = Event(
    imagePath: "assets/weding_image/weding6.jpg",
    title: "Single Butterfly",
    description: "Single ButterFly, wujudkan segala keinginan anda dalam waktu yang singkat ini",
    location: "Unknown, Hotel Legendary elf",
    duration: "12h",
    punchLine1: "Cute Girl  W.O",
    punchLine2: "Babang Nopal Bahenol",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 5, 3,6]
    );

final lunarDissecor = Event(
    imagePath: "assets/weding_image/weding7.jpg",
    title: "Lunar Dissecor",
    description: "Lunar Dissecor, matap nih buat RPK",
    location: "Medan, Hotel Thousand Streams",
    duration: "12h",
    punchLine1: "ASPD W.O",
    punchLine2: "shadow Escape",
    galleryImages: ["assets/weding_image/weding8.jpg", "assets/weding_image/weding9.jpg", "assets/weding_image/weding10.jpg", "assets/weding_image/weding11.jpg", "assets/weding_image/weding12.jpg", "assets/weding_image/weding13.jpg",],
    categoryIds: [0, 7, 2, 1, 5]
    );

final events = [
  gloryMoonlight,
  costOfGlory,
  lotusIllusion,
  singleButterfly,
  flowingStardust,
  lunarDissecor,
  mystoCaster
];