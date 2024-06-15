// ignore_for_file: public_member_api_docs, sort_constructors_first
class DataSectors {
  static const String banks = 'banks';
  static const String basic = 'Basic resources';
  static const String health = 'Health care and medicines';
  static const String industrial = 'Industrial services, products and cars';
  static const String real = 'real estate';
  static const String tourism = 'Tourism and entertainment';
  static const String communications =
      'Communications, media and information technology';
  static const String food = 'Food, drinks and tobacco';
  static const String energy = 'Energy and support services';
  static const String traders = 'Traders and distributors';
  static const String transportation = 'Transportation and shipping services';
  static const String educational = 'educational services';
  static const String nonBanking = 'Non-banking financial services';
  static const String engineering = 'Engineering contracting and construction';
  static const String textiles = 'Textiles and durable goods';
  static const String building = 'Building materials';
  static const String paper = 'Paper and packaging materials';

  final String name;
  final String image;
  final String description;
  final String profit;
  final bool isBlue;
  DataSectors({
    required this.name,
    required this.image,
    required this.description,
    required this.profit,
    required this.isBlue,
  });

  static List<DataSectors> getSectors({required String name}) {
    if (name == banks) {
      return [
        DataSectors(
          name: "ADIB",
          image: 'assets/images/bank1.png', //assets/images/bank1.png
          description: 'Abu Dhabi Islamic Bank - Egypt',
          profit: "2.92%",
          isBlue: true,
        ),
        DataSectors(
          name: "CIB",
          image: 'assets/images/bank2.png',
          description: 'Commercial International Bank-Egypt',
          profit: "-0.26%",
          isBlue: false,
        ),
      ];
    } else if (name == industrial) {
      return [
        DataSectors(
          name: "SWDY",
          image: 'assets/images/industrial1.png',
          description: 'El Sewedy Electric',
          profit: "-0.91%",
          isBlue: false,
        ),
        DataSectors(
          name: "AUTO",
          image: 'assets/images/industrial2.png',
          description: 'GB corp',
          profit: "8.77%",
          isBlue: true,
        ),
      ];
    } else if (name == real) {
      return [
        DataSectors(
          name: "HELI",
          image: 'assets/images/real1.png',
          description: 'Heliopolis house',
          profit: "-11.04%",
          isBlue: false,
        ),
        DataSectors(
          name: "MNHD",
          image: 'assets/images/real2.png',
          description: 'Madnet Masr for housingand development',
          profit: "2.32%",
          isBlue: true,
        ),
        DataSectors(
          name: "ORHD",
          image: 'assets/images/real3.png',
          description: 'Orascom Development Egypt',
          profit: "1.29%",
          isBlue: true,
        ),
        DataSectors(
          name: "PHDC",
          image: 'assets/images/real4.png',
          description: 'Palm Hills Development Company',
          profit: "4.30%",
          isBlue: true,
        ),
        DataSectors(
          name: "TMGH",
          image: 'assets/images/real5.png',
          description: 'Talaat Moustafa Group Holding',
          profit: " 4.30%",
          isBlue: true,
        ),
      ];
    } else if (name == communications) {
      return [
        DataSectors(
          name: "FWRY",
          image: 'assets/images/communications1.png',
          description: 'Fawry for Banking Technology and  Electronic Payments',
          profit: "0.54%",
          isBlue: true,
        ),
        DataSectors(
          name: "ETEL",
          image: 'assets/images/communications2.png',
          description: 'Telecom Egypt ',
          profit: "1.34%",
          isBlue: true,
        ),
        DataSectors(
          name: "EFIH",
          image: 'assets/images/communications3.png',
          description: 'E-finance For Digital\nand Financial Institutions',
          profit: "2.47%",
          isBlue: true,
        ),
      ];
    } else if (name == food) {
      return [
        DataSectors(
          name: " AMOC",
          image: 'assets/images/food1.png',
          description: 'Alexandria Mineral Oils Company',
          profit: "6.56%",
          isBlue: true,
        ),
        DataSectors(
          name: "SUGR",
          image: 'assets/images/food2.png',
          description: 'Delta Sugar',
          profit: " 0.38%",
          isBlue: true,
        ),
        DataSectors(
          name: "EFID",
          image: 'assets/images/food3.png',
          description: 'Edita Food Industries',
          profit: "3.92%",
          isBlue: true,
        ),
        DataSectors(
          name: "JUFO",
          image: 'assets/images/food4.png',
          description: 'Juhayna Food Industries',
          profit: "4.19%",
          isBlue: true,
        ),
      ];
    } else if (name == transportation) {
      return [
        DataSectors(
          name: " ALCN",
          image: 'assets/images/transportation1.png',
          description: 'Alexandria Containers and Goods',
          profit: "-0.59%",
          isBlue: false,
        ),
      ];
    } else if (name == nonBanking) {
      return [
        DataSectors(
          name: "BTFH",
          image: 'assets/images/nonbanking1.png',
          description: 'Beltone Holding',
          profit: "3.37%",
          isBlue: true,
        ),
        DataSectors(
          name: "HRHO",
          image: 'assets/images/nonbanking2.png',
          description: 'EFG Hermes Holding',
          profit: "4.19%",
          isBlue: true,
        ),
        DataSectors(
          name: "EKHO",
          image: 'assets/images/nonbanking3.png',
          description: 'Egyptian Kuwaiti Holding',
          profit: "-0.47%",
          isBlue: false,
        ),
        DataSectors(
          name: "EKHOA",
          image: 'assets/images/nonbanking4.png',
          description: 'Egyptian Kuwaiti Holding-EGP',
          profit: "0.26%",
          isBlue: true,
        ),
      ];
    } else if (name == engineering) {
      return [
        DataSectors(
          name: "ORAS",
          image: 'assets/images/engineering.png',
          description: 'Orascom Construction PLC',
          profit: "1.34%",
          isBlue: true,
        ),
      ];
    } else if (name == textiles) {
      return [
        DataSectors(
          name: "ORWE",
          image: 'assets/images/textiles.png',
          description: 'Oriental Weavers',
          profit: "2.24%",
          isBlue: true,
        ),
      ];
    } else if (name == health) {
      return [
        DataSectors(
          name: "PHAR",
          image: 'assets/images/health1.png',
          description: 'Egyptian International Pharmaceuticals (EIPICO)',
          profit: "-.71%",
          isBlue: false,
        ),
        DataSectors(
          name: "ISPH",
          image: 'assets/images/health2.png',
          description: 'Egyptian International Pharmaceuticals (EIPICO)',
          profit: "0.00%",
          isBlue: true,
        ),
      ];
    } else if (name == basic) {
      return [
        DataSectors(
          name: "ESRS",
          image: 'assets/images/basic1.png',
          description: 'Ezz Steel',
          profit: "1.78%",
          isBlue: true,
        ),
        DataSectors(
          name: " MFPC",
          image: 'assets/images/basic2.png',
          description: 'Misr Fertilizers Production Company(Mopco)',
          profit: "0.72%",
          isBlue: true,
        ),
        DataSectors(
          name: " SKPC",
          image: 'assets/images/basic3.png',
          description: ' Sidi Kerir Petrochemicals - SIDPEC',
          profit: "0.26%",
          isBlue: true,
        ),
      ];
    } else {
      return [];
    }
  }
}












//     "paper_and_packaging_materials":"Paper and packaging materials"