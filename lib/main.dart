import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



const Color primaryBlue = Color(0xFF1976D2);
const Color lightBlue = Color(0xFFE3F2FD);
const Color darkBlue = Color(0xFF0D47A1);
const Color purple = Color(0xFF7E57C2);
const Color white = Colors.white;



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio-Data',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: lightBlue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryBlue,
        ),
      ),
      home: const BioDataPage(),
    );
  }
}



class BioDataPage extends StatefulWidget {
  const BioDataPage({super.key});

  @override
  State<BioDataPage> createState() => _BioDataPageState();
}

class _BioDataPageState extends State<BioDataPage> {
 
  final nameController = TextEditingController();
  final dobController = TextEditingController();
  final pobController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final civilStatusController = TextEditingController();
  final nationalityController = TextEditingController();
  final religionController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final fatherController = TextEditingController();
  final motherController = TextEditingController();
  final addressController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();


  final elementaryController = TextEditingController();
  final highSchoolController = TextEditingController();
  final collegeController = TextEditingController();
  final courseController = TextEditingController();


  final companyController = TextEditingController();
  final positionController = TextEditingController();
  final datesController = TextEditingController();


  final skillsController = TextEditingController();
  final referenceNameController = TextEditingController();
  final referenceContactController = TextEditingController();

  String generatedBioData = '';

  

  void generateBioData() {
    setState(() {
      generatedBioData = '''
BIO-DATA

PERSONAL INFORMATION
────────────────────────────────────
Full Name        : ${nameController.text}
Date of Birth    : ${dobController.text}
Place of Birth   : ${pobController.text}
Age              : ${ageController.text}
Gender           : ${genderController.text}
Civil Status     : ${civilStatusController.text}
Nationality      : ${nationalityController.text}
Religion         : ${religionController.text}
Height           : ${heightController.text}
Weight           : ${weightController.text}
Father's Name    : ${fatherController.text}
Mother's Name    : ${motherController.text}
Address          : ${addressController.text}
Contact Number   : ${phoneController.text}
Email            : ${emailController.text}

EDUCATIONAL BACKGROUND
────────────────────────────────────
Elementary       : ${elementaryController.text}
High School      : ${highSchoolController.text}
College/Univ.    : ${collegeController.text}
Course/Degree    : ${courseController.text}

EMPLOYMENT RECORD
────────────────────────────────────
Company          : ${companyController.text}
Position         : ${positionController.text}
Inclusive Dates  : ${datesController.text}

SKILLS
────────────────────────────────────
${skillsController.text}

CHARACTER REFERENCE
────────────────────────────────────
Name             : ${referenceNameController.text}
Contact Number   : ${referenceContactController.text}
''';
    });
  }

 

  Widget buildField(
    String label,
    TextEditingController controller,
    IconData icon, {
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: white,
          prefixIcon: Icon(
            icon,
            color: purple,
          ),
          labelStyle: const TextStyle(
            color: primaryBlue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: primaryBlue,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: purple,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }


  Widget sectionTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
        bottom: 12,
      ),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            primaryBlue,
            purple,
          ],
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.folder,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }


  @override
  void dispose() {
    nameController.dispose();
    dobController.dispose();
    pobController.dispose();
    ageController.dispose();
    genderController.dispose();
    civilStatusController.dispose();
    nationalityController.dispose();
    religionController.dispose();
    heightController.dispose();
    weightController.dispose();
    fatherController.dispose();
    motherController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();

    elementaryController.dispose();
    highSchoolController.dispose();
    collegeController.dispose();
    courseController.dispose();

    companyController.dispose();
    positionController.dispose();
    datesController.dispose();

    skillsController.dispose();
    referenceNameController.dispose();
    referenceContactController.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'MY BIO-DATA',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                sectionTitle('Personal Information'),

                buildField(
                  'Full Name',
                  nameController,
                  Icons.person,
                ),

                buildField(
                  'Date of Birth',
                  dobController,
                  Icons.calendar_today,
                ),

                buildField(
                  'Place of Birth',
                  pobController,
                  Icons.location_city,
                ),

                buildField(
                  'Age',
                  ageController,
                  Icons.cake,
                  keyboardType: TextInputType.number,
                ),

                buildField(
                  'Gender',
                  genderController,
                  Icons.wc,
                ),

                buildField(
                  'Civil Status',
                  civilStatusController,
                  Icons.favorite,
                ),

                buildField(
                  'Nationality',
                  nationalityController,
                  Icons.flag,
                ),

                buildField(
                  'Religion',
                  religionController,
                  Icons.church,
                ),

                buildField(
                  'Height',
                  heightController,
                  Icons.height,
                ),

                buildField(
                  'Weight',
                  weightController,
                  Icons.monitor_weight,
                ),

                buildField(
                  "Father's Name",
                  fatherController,
                  Icons.person,
                ),

                buildField(
                  "Mother's Name",
                  motherController,
                  Icons.person_outline,
                ),

                buildField(
                  'Address',
                  addressController,
                  Icons.home,
                  maxLines: 2,
                ),

                buildField(
                  'Contact Number',
                  phoneController,
                  Icons.phone,
                  keyboardType: TextInputType.phone,
                ),

                buildField(
                  'Email',
                  emailController,
                  Icons.email,
                  keyboardType: TextInputType.emailAddress,
                ),

             
                sectionTitle('Educational Background'),

                buildField(
                  'Elementary',
                  elementaryController,
                  Icons.school,
                ),

                buildField(
                  'High School',
                  highSchoolController,
                  Icons.school,
                ),

                buildField(
                  'College / University',
                  collegeController,
                  Icons.school,
                ),

                buildField(
                  'Course / Degree',
                  courseController,
                  Icons.menu_book,
                ),

            
                sectionTitle('Employment Record'),

                buildField(
                  'Company Name',
                  companyController,
                  Icons.business,
                ),

                buildField(
                  'Position',
                  positionController,
                  Icons.work,
                ),

                buildField(
                  'Inclusive Dates',
                  datesController,
                  Icons.date_range,
                ),

                // SKILLS
                sectionTitle('Skills'),

                buildField(
                  'Skills',
                  skillsController,
                  Icons.star,
                  maxLines: 3,
                ),

               
                sectionTitle('Character Reference'),

                buildField(
                  'Reference Name',
                  referenceNameController,
                  Icons.person_outline,
                ),

                buildField(
                  'Reference Contact Number',
                  referenceContactController,
                  Icons.phone,
                  keyboardType: TextInputType.phone,
                ),

                const SizedBox(height: 15),

            
                SizedBox(
                  height: 55,
                  child: ElevatedButton.icon(
                    onPressed: generateBioData,
                    icon: const Icon(Icons.description),
                    label: const Text(
                      'GENERATE BIO-DATA',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

      
                if (generatedBioData.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: primaryBlue,
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: primaryBlue.withAlpha(40),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: SelectableText(
                      generatedBioData,
                      style: const TextStyle(
                        color: darkBlue,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}