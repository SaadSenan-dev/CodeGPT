class ChatMessage {
  final String text;
  final bool isUser;
  ChatMessage({required this.text, required this.isUser});
}

class QAEntry {
  final List<String> keywords;
  final String answer;
  QAEntry({required this.keywords, required this.answer});
}

final List<QAEntry> qaData = [
  // ════════════════════════════════
  //  تحيات عامة
  // ════════════════════════════════
  QAEntry(
    keywords: ["مرحبا", "هلا", "اهلا", "السلام", "هاي", "hello", "hi"],
    answer: "أهلاً وسهلاً! أنا مساعدك في Flutter 💙 كيف أقدر أساعدك اليوم؟",
  ),
  QAEntry(
    keywords: ["شكرا", "شكراً", "تسلم", "يسلمو", "thanks", "thank you"],
    answer: "العفو! يسعدني مساعدتك دايماً 😊",
  ),
  QAEntry(
    keywords: ["كيفك", "كيف حالك", "how are you"],
    answer: "أنا بخير! جاهز أجاوب على أسئلة Flutter 😄",
  ),
  QAEntry(
    keywords: ["من انت", "مين انت", "who are you"],
    answer: "أنا FlutterGPT، مساعدك الذكي في تطوير تطبيقات Flutter! 🤖",
  ),
  QAEntry(
    keywords: ["وداع", "باي", "مع السلامة", "bye"],
    answer: "مع السلامة! Happy Coding! 👋",
  ),

  // ════════════════════════════════
  // 🚀 Flutter Basics
  // ════════════════════════════════
  QAEntry(
    keywords: ["flutter", "فلاتر", "ما هو فلاتر", "what is flutter"],
    answer:
        "Flutter هو إطار عمل مفتوح المصدر من Google لبناء تطبيقات موبايل، ويب، وديسكتوب من كود واحد باستخدام لغة Dart. يتميز بسرعة التطوير وجمال الواجهات! 🚀",
  ),
  QAEntry(
    keywords: ["dart", "دارت", "لغة dart", "what is dart"],
    answer:
        "Dart هي لغة البرمجة المستخدمة في Flutter. طورتها Google وهي object-oriented، strongly typed، وتدعم null safety وasync/await. سهلة التعلم إذا عرفت Java أو JavaScript! 💙",
  ),
  QAEntry(
    keywords: ["hot reload", "هوت ريلود"],
    answer:
        "Hot Reload يطبّق التغييرات فوراً بدون إعادة تشغيل التطبيق أو فقدان الـ state.\nاختصاره: r في الترمينال.\nHot Restart: R → يعيد التشغيل مع فقدان الـ state ⚡",
  ),
  QAEntry(
    keywords: ["flutter create", "مشروع جديد", "new project", "انشاء مشروع"],
    answer:
        "لإنشاء مشروع Flutter جديد:\nflutter create my_app\ncd my_app\nflutter run\nأو من VS Code: Ctrl+Shift+P → Flutter: New Project 📁",
  ),
  QAEntry(
    keywords: ["flutter run", "تشغيل", "run app"],
    answer:
        "لتشغيل التطبيق:\nflutter run → تشغيل على جهاز متصل\nflutter run -d chrome → تشغيل على المتصفح\nflutter run --release → نسخة الإنتاج\nflutter devices → لعرض الأجهزة المتاحة 📱",
  ),
  QAEntry(
    keywords: ["pubspec", "pubspec.yaml", "dependencies", "packages"],
    answer:
        "pubspec.yaml هو ملف إعدادات المشروع:\ndependencies:\n  flutter:\n    sdk: flutter\n  http: ^1.0.0\n\nassets:\n  - images/\n\nبعد التعديل: flutter pub get 📦",
  ),
  QAEntry(
    keywords: ["flutter pub", "pub get", "pub add"],
    answer:
        "أوامر pub في Flutter:\nflutter pub get → تحميل المكتبات\nflutter pub add http → إضافة مكتبة\nflutter pub upgrade → تحديث المكتبات\nflutter pub outdated → عرض المكتبات القديمة 📦",
  ),
  QAEntry(
    keywords: ["main.dart", "main", "runapp", "materialapp"],
    answer:
        "ملف main.dart هو نقطة البداية:\nvoid main() {\n  runApp(MyApp());\n}\nclass MyApp extends StatelessWidget {\n  @override\n  Widget build(BuildContext context) {\n    return MaterialApp(\n      home: HomeScreen(),\n    );\n  }\n}",
  ),
  QAEntry(
    keywords: ["buildcontext", "context", "build context"],
    answer:
        "BuildContext هو معرّف موقع الـ widget في شجرة الـ widgets. يُستخدم للوصول لـ:\n- Theme.of(context)\n- Navigator.of(context)\n- MediaQuery.of(context)\n- ScaffoldMessenger.of(context) 🌳",
  ),
  QAEntry(
    keywords: ["flutter version", "اصدار فلاتر", "flutter upgrade"],
    answer:
        "إدارة إصدارات Flutter:\nflutter --version → عرض الإصدار\nflutter upgrade → تحديث Flutter\nflutter channel stable → التبديل للقناة المستقرة\nflutter doctor → فحص البيئة 🔍",
  ),
  QAEntry(
    keywords: ["flutter doctor", "doctor", "setup", "إعداد"],
    answer:
        "flutter doctor يفحص بيئة التطوير ويُظهر المشاكل:\n✅ Flutter installed\n✅ Android SDK\n✅ VS Code\n✅ Connected device\nاحرص أن كل علامات ✅ تظهر قبل البدء! 🏥",
  ),

  // ════════════════════════════════
  // 🧩 Widgets
  // ════════════════════════════════
  QAEntry(
    keywords: ["widget", "ويدجت", "ما هو widget"],
    answer:
        "في Flutter كل شيء Widget! نوعان:\n1. StatelessWidget: لا يتغير بعد البناء\n2. StatefulWidget: يتحدث عند تغير البيانات\nالواجهة كلها شجرة Widgets 🌳",
  ),
  QAEntry(
    keywords: ["stateless", "statelesswidget"],
    answer:
        "StatelessWidget للـ widgets الثابتة:\nclass MyWidget extends StatelessWidget {\n  const MyWidget({super.key});\n  @override\n  Widget build(BuildContext context) {\n    return Text('Hello Flutter');\n  }\n}\nاستخدم const دائماً لتحسين الأداء! ⚡",
  ),
  QAEntry(
    keywords: ["stateful", "statefulwidget", "setstate"],
    answer:
        "StatefulWidget للـ widgets الديناميكية:\nclass Counter extends StatefulWidget {\n  @override\n  State<Counter> createState() => _CounterState();\n}\nclass _CounterState extends State<Counter> {\n  int count = 0;\n  @override\n  Widget build(BuildContext context) {\n    return Text('\$count');\n  }\n}",
  ),
  QAEntry(
    keywords: ["scaffold", "سكافولد"],
    answer:
        "Scaffold هو هيكل الشاشة الأساسي:\nScaffold(\n  appBar: AppBar(title: Text('Title')),\n  body: Center(child: Text('Body')),\n  drawer: Drawer(),\n  bottomNavigationBar: BottomNavigationBar(),\n  floatingActionButton: FloatingActionButton(),\n) 🏗️",
  ),
  QAEntry(
    keywords: ["container", "كونتينر"],
    answer:
        "Container هو أكثر widget استخداماً:\nContainer(\n  width: 100,\n  height: 100,\n  padding: EdgeInsets.all(16),\n  margin: EdgeInsets.symmetric(vertical: 8),\n  decoration: BoxDecoration(\n    color: Colors.blue,\n    borderRadius: BorderRadius.circular(12),\n  ),\n  child: Text('Hello'),\n) 📦",
  ),
  QAEntry(
    keywords: [
      "row",
      "رو",
      "column",
      "كولمن",
      "mainaxisalignment",
      "crossaxisalignment"
    ],
    answer:
        "Row (أفقي) و Column (عمودي):\nRow(\n  mainAxisAlignment: MainAxisAlignment.spaceBetween,\n  crossAxisAlignment: CrossAxisAlignment.center,\n  children: [Widget1(), Widget2()],\n)\nMainAxisAlignment: start, end, center, spaceBetween, spaceAround, spaceEvenly 📐",
  ),
  QAEntry(
    keywords: ["stack", "ستاك", "positioned"],
    answer:
        "Stack لتكديس الـ widgets:\nStack(\n  alignment: Alignment.center,\n  children: [\n    Container(color: Colors.blue),\n    Positioned(\n      top: 10, right: 10,\n      child: Icon(Icons.star),\n    ),\n  ],\n) 📚",
  ),
  QAEntry(
    keywords: ["expanded", "flexible", "spacer"],
    answer:
        "توزيع المساحة:\n- Expanded: يملأ المساحة المتبقية (flex: 1)\n- Flexible: مرن، يأخذ مساحة عند الحاجة\n- Spacer: مسافة فارغة\nRow(children: [\n  Expanded(flex: 2, child: Box1()),\n  Expanded(flex: 1, child: Box2()),\n]) ⚖️",
  ),
  QAEntry(
    keywords: ["listview", "لست فيو", "list builder"],
    answer:
        "ListView أنواعه:\n// للقوائم الكبيرة (الأفضل)\nListView.builder(\n  itemCount: items.length,\n  itemBuilder: (context, index) {\n    return ListTile(title: Text(items[index]));\n  },\n)\n// مع فواصل\nListView.separated(\n  separatorBuilder: (_, __) => Divider(),\n) 📋",
  ),
  QAEntry(
    keywords: ["gridview", "جريد", "grid view"],
    answer:
        "GridView للشبكات:\nGridView.builder(\n  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(\n    crossAxisCount: 2,\n    crossAxisSpacing: 10,\n    mainAxisSpacing: 10,\n    childAspectRatio: 1.5,\n  ),\n  itemCount: items.length,\n  itemBuilder: (_, i) => Card(),\n) 🔲",
  ),
  QAEntry(
    keywords: ["text", "تكست", "textstyle"],
    answer:
        "Text widget:\nText(\n  'Hello Flutter',\n  style: TextStyle(\n    fontSize: 18,\n    fontWeight: FontWeight.bold,\n    color: Colors.black,\n    fontFamily: 'Cairo',\n    letterSpacing: 1.2,\n    height: 1.5,\n  ),\n  maxLines: 2,\n  overflow: TextOverflow.ellipsis,\n) ✍️",
  ),
  QAEntry(
    keywords: ["richttext", "rich text", "textspan"],
    answer:
        "RichText لنصوص متعددة الأنماط:\nRichText(\n  text: TextSpan(\n    text: 'Hello ',\n    style: TextStyle(color: Colors.black),\n    children: [\n      TextSpan(\n        text: 'Flutter',\n        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),\n      ),\n    ],\n  ),\n) 🎨",
  ),
  QAEntry(
    keywords: [
      "image",
      "صورة",
      "image.asset",
      "image.network",
      "cachednetworkimage"
    ],
    answer:
        "الصور في Flutter:\nImage.asset('assets/logo.png', fit: BoxFit.cover)\nImage.network('https://...', loadingBuilder: (_, child, progress) {\n  return progress == null ? child : CircularProgressIndicator();\n})\n// الأفضل للأداء:\ncached_network_image: ^3.3.0 🖼️",
  ),
  QAEntry(
    keywords: ["icon", "ايقونة", "icons", "iconbutton"],
    answer:
        "الأيقونات في Flutter:\nIcon(Icons.home, color: Colors.blue, size: 30)\nIconButton(\n  icon: Icon(Icons.search),\n  onPressed: () {},\n)\n// مكتبات خارجية:\nfont_awesome_flutter\nflutter_svg للـ SVG 🎨",
  ),
  QAEntry(
    keywords: [
      "button",
      "زر",
      "elevatedbutton",
      "textbutton",
      "outlinedbutton"
    ],
    answer:
        "أنواع الأزرار:\nElevatedButton(\n  style: ElevatedButton.styleFrom(\n    backgroundColor: Colors.black,\n    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),\n  ),\n  onPressed: () {},\n  child: Text('Click'),\n)\nكذلك: TextButton، OutlinedButton، FilledButton (Material 3) 🔘",
  ),
  QAEntry(
    keywords: ["floatingactionbutton", "fab", "floating"],
    answer:
        "FloatingActionButton:\nScaffold(\n  floatingActionButton: FloatingActionButton(\n    onPressed: () {},\n    backgroundColor: Colors.black,\n    child: Icon(Icons.add, color: Colors.white),\n  ),\n  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,\n) ⭕",
  ),
  QAEntry(
    keywords: ["inkwell", "gesturededector", "gesture", "ضغطة", "onTap"],
    answer:
        "الضغطات في Flutter:\n// مع تأثير موجة\nInkWell(\n  onTap: () {},\n  onLongPress: () {},\n  borderRadius: BorderRadius.circular(8),\n  child: Container(),\n)\n// بدون تأثير\nGestureDetector(\n  onTap: () {},\n  onDoubleTap: () {},\n  onPanUpdate: (details) {},\n  child: Container(),\n) 👆",
  ),
  QAEntry(
    keywords: ["textfield", "تكست فيلد", "input field", "controller"],
    answer:
        "TextField:\nfinal _controller = TextEditingController();\nTextField(\n  controller: _controller,\n  keyboardType: TextInputType.emailAddress,\n  obscureText: true, // لكلمة المرور\n  decoration: InputDecoration(\n    labelText: 'Email',\n    prefixIcon: Icon(Icons.email),\n    border: OutlineInputBorder(),\n  ),\n  onChanged: (value) {},\n)\n// تذكر dispose() 🗑️",
  ),
  QAEntry(
    keywords: ["appbar", "ابار", "custom appbar"],
    answer:
        "AppBar:\nAppBar(\n  title: Text('العنوان'),\n  centerTitle: true,\n  leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),\n  actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],\n  backgroundColor: Colors.black,\n  elevation: 0,\n  bottom: TabBar(tabs: []),\n) 🔝",
  ),
  QAEntry(
    keywords: ["drawer", "درور", "drawer header"],
    answer:
        "Drawer:\nDrawer(\n  child: Column(\n    children: [\n      DrawerHeader(\n        decoration: BoxDecoration(color: Colors.black),\n        child: Text('Menu', style: TextStyle(color: Colors.white)),\n      ),\n      ListTile(\n        leading: Icon(Icons.home),\n        title: Text('Home'),\n        onTap: () => Navigator.pop(context),\n      ),\n    ],\n  ),\n) 📱",
  ),
  QAEntry(
    keywords: ["bottomnavigationbar", "bottom navigation", "تاب"],
    answer:
        "BottomNavigationBar:\nint _currentIndex = 0;\nScaffold(\n  bottomNavigationBar: BottomNavigationBar(\n    currentIndex: _currentIndex,\n    selectedItemColor: Colors.black,\n    onTap: (i) => setState(() => _currentIndex = i),\n    items: [\n      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),\n      BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),\n    ],\n  ),\n) 📲",
  ),
  QAEntry(
    keywords: ["tabbar", "tab bar", "tabview", "defaulttabcontroller"],
    answer:
        "TabBar مع TabBarView:\nDefaultTabController(\n  length: 3,\n  child: Scaffold(\n    appBar: AppBar(\n      bottom: TabBar(tabs: [\n        Tab(text: 'Tab 1'),\n        Tab(text: 'Tab 2'),\n        Tab(text: 'Tab 3'),\n      ]),\n    ),\n    body: TabBarView(children: [\n      Screen1(), Screen2(), Screen3(),\n    ]),\n  ),\n) 📑",
  ),
  QAEntry(
    keywords: ["card", "كارد"],
    answer:
        "Card:\nCard(\n  elevation: 4,\n  shadowColor: Colors.black26,\n  shape: RoundedRectangleBorder(\n    borderRadius: BorderRadius.circular(16),\n  ),\n  child: Padding(\n    padding: EdgeInsets.all(16),\n    child: Column(\n      children: [Text('Title'), Text('Subtitle')],\n    ),\n  ),\n) 🃏",
  ),
  QAEntry(
    keywords: ["padding", "edgeinsets", "margin", "sizedbox"],
    answer:
        "المسافات:\nPadding(padding: EdgeInsets.all(16), child: Text())\nEdgeInsets.only(top: 8, left: 16)\nEdgeInsets.symmetric(horizontal: 16, vertical: 8)\nSizedBox(width: 10, height: 20)\nSpacer() → يملأ المساحة 📏",
  ),
  QAEntry(
    keywords: ["cliprrect", "clip", "clipping", "border radius image"],
    answer:
        "ClipRRect لقص الـ widget بحواف دائرية:\nClipRRect(\n  borderRadius: BorderRadius.circular(50),\n  child: Image.asset('assets/avatar.png', fit: BoxFit.cover),\n)\nكذلك: ClipOval للدائرة الكاملة، ClipPath للأشكال المخصصة ✂️",
  ),
  QAEntry(
    keywords: ["wrap", "ورب", "chip", "flow"],
    answer:
        "Wrap يرتب العناصر ويكمل في السطر التالي:\nWrap(\n  spacing: 8,\n  runSpacing: 8,\n  children: [\n    Chip(label: Text('Flutter')),\n    Chip(label: Text('Dart')),\n    Chip(label: Text('Firebase')),\n  ],\n) مفيد للـ tags والـ chips! 🏷️",
  ),
  QAEntry(
    keywords: ["visibility", "opacity", "offstage", "اخفاء"],
    answer:
        "إخفاء الـ widgets:\nVisibility(visible: isVisible, child: Widget()) → يحجز مساحة\nOpacity(opacity: 0.5, child: Widget()) → شفافية\nOffstage(offstage: true, child: Widget()) → إخفاء كامل\nif (condition) Widget() → الأبسط 🙈",
  ),
  QAEntry(
    keywords: ["singlechildscrollview", "scroll", "سكرول", "scrollview"],
    answer:
        "SingleChildScrollView للمحتوى الطويل:\nSingleChildScrollView(\n  physics: BouncingScrollPhysics(),\n  child: Column(\n    children: [...], // محتوى طويل\n  ),\n)\nمفيد لحل مشكلة overflow في الكيبورد! 📜",
  ),
  QAEntry(
    keywords: ["customscrollview", "sliver", "sliverappbar"],
    answer:
        "SliverAppBar مع CustomScrollView:\nCustomScrollView(\n  slivers: [\n    SliverAppBar(\n      expandedHeight: 200,\n      floating: true,\n      pinned: true,\n      flexibleSpace: FlexibleSpaceBar(title: Text('Title')),\n    ),\n    SliverList(\n      delegate: SliverChildBuilderDelegate((_, i) => ListTile(), childCount: 20),\n    ),\n  ],\n) 🎯",
  ),
  QAEntry(
    keywords: ["snackbar", "سناكبار", "toast", "notification bar"],
    answer:
        "SnackBar:\nScaffoldMessenger.of(context).showSnackBar(\n  SnackBar(\n    content: Text('تمت العملية بنجاح!'),\n    backgroundColor: Colors.green,\n    duration: Duration(seconds: 3),\n    action: SnackBarAction(label: 'تراجع', onPressed: () {}),\n  ),\n); 💬",
  ),
  QAEntry(
    keywords: ["dialog", "ديالوج", "alertdialog", "showdialog", "popup"],
    answer:
        "AlertDialog:\nshowDialog(\n  context: context,\n  builder: (_) => AlertDialog(\n    title: Text('تنبيه'),\n    content: Text('هل أنت متأكد؟'),\n    actions: [\n      TextButton(onPressed: () => Navigator.pop(context), child: Text('إلغاء')),\n      ElevatedButton(onPressed: () {}, child: Text('موافق')),\n    ],\n  ),\n); 💭",
  ),
  QAEntry(
    keywords: ["bottomsheet", "bottom sheet", "showmodalbottomsheet", "مودال"],
    answer:
        "ModalBottomSheet:\nshowModalBottomSheet(\n  context: context,\n  isScrollControlled: true,\n  shape: RoundedRectangleBorder(\n    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),\n  ),\n  builder: (_) => Container(\n    padding: EdgeInsets.all(16),\n    child: Column(mainAxisSize: MainAxisSize.min, children: []),\n  ),\n); 📋",
  ),
  QAEntry(
    keywords: ["hero", "hero animation", "shared element"],
    answer:
        "Hero Animation للانتقال بين الشاشات:\n// الشاشة الأولى\nHero(tag: 'avatar', child: CircleAvatar())\n// الشاشة الثانية\nHero(tag: 'avatar', child: Image.asset('...'))\nنفس الـ tag يُنشئ الانتقال التلقائي! ✨",
  ),
  QAEntry(
    keywords: ["animatedcontainer", "animation", "animated", "انيميشن"],
    answer:
        "AnimatedContainer:\nAnimatedContainer(\n  duration: Duration(milliseconds: 300),\n  curve: Curves.easeInOut,\n  width: isExpanded ? 200 : 100,\n  height: isExpanded ? 200 : 100,\n  color: isExpanded ? Colors.blue : Colors.red,\n  child: Text('Animated'),\n) 🎬",
  ),
  QAEntry(
    keywords: ["animationcontroller", "tween", "tweenanimation"],
    answer:
        "AnimationController:\nlate AnimationController _ctrl;\nlate Animation<double> _anim;\n@override\nvoid initState() {\n  _ctrl = AnimationController(vsync: this, duration: Duration(seconds: 1));\n  _anim = Tween(begin: 0.0, end: 1.0).animate(_ctrl);\n  _ctrl.repeat(reverse: true);\n}\n// تذكر dispose()! 🎭",
  ),
  QAEntry(
    keywords: ["mediaquery", "screen size", "حجم الشاشة", "responsive"],
    answer:
        "MediaQuery للحصول على حجم الشاشة:\nfinal size = MediaQuery.of(context).size;\nfinal width = size.width;\nfinal height = size.height;\nfinal padding = MediaQuery.of(context).padding; // notch\nللـ responsive design استخدم LayoutBuilder أيضاً 📐",
  ),
  QAEntry(
    keywords: ["layoutbuilder", "responsive design", "تصميم متجاوب"],
    answer:
        "LayoutBuilder للتصميم المتجاوب:\nLayoutBuilder(\n  builder: (context, constraints) {\n    if (constraints.maxWidth > 600) {\n      return TabletLayout();\n    }\n    return MobileLayout();\n  },\n) 📱💻",
  ),
  QAEntry(
    keywords: ["theme", "ثيم", "themedata", "dark mode", "light mode"],
    answer:
        "الثيم في Flutter:\nMaterialApp(\n  theme: ThemeData(\n    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),\n    fontFamily: 'Cairo',\n    useMaterial3: true,\n  ),\n  darkTheme: ThemeData.dark(),\n  themeMode: ThemeMode.system,\n)\n// الاستخدام:\nTheme.of(context).colorScheme.primary 🌙",
  ),
  QAEntry(
    keywords: ["color", "لون", "colors", "colorscheme"],
    answer:
        "الألوان في Flutter:\nColors.blue.shade700\nColor(0xFF1A1A1A)\nColors.black.withOpacity(0.5)\n// Material 3\nTheme.of(context).colorScheme.primary\nTheme.of(context).colorScheme.secondary\nTheme.of(context).colorScheme.surface 🎨",
  ),
  QAEntry(
    keywords: ["boxdecoration", "gradient", "تدرج", "shadow", "ظل"],
    answer:
        "BoxDecoration:\nBoxDecoration(\n  gradient: LinearGradient(\n    colors: [Colors.blue, Colors.purple],\n    begin: Alignment.topLeft,\n    end: Alignment.bottomRight,\n  ),\n  borderRadius: BorderRadius.circular(16),\n  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4))],\n) ✨",
  ),
  QAEntry(
    keywords: ["font", "خط", "google fonts", "custom font"],
    answer:
        "إضافة خطوط:\n// Google Fonts\ndependencies:\n  google_fonts: ^6.0.0\n// الاستخدام:\nText('Hello', style: GoogleFonts.cairo(fontSize: 18))\n// خط مخصص\nflutter:\n  fonts:\n    - family: Cairo\n      fonts:\n        - asset: assets/fonts/Cairo-Regular.ttf 🔤",
  ),
  QAEntry(
    keywords: ["safe area", "safearea", "notch", "status bar"],
    answer:
        "SafeArea يحمي المحتوى من الـ notch وشريط الحالة:\nScaffold(\n  body: SafeArea(\n    child: Column(children: []),\n  ),\n)\nأو يمكن تعطيل جانب معين:\nSafeArea(top: false, child: Widget()) 📱",
  ),
  QAEntry(
    keywords: ["futurebuilder", "future builder", "async widget"],
    answer:
        "FutureBuilder للبيانات غير المتزامنة:\nFutureBuilder<List<User>>(\n  future: fetchUsers(),\n  builder: (context, snapshot) {\n    if (snapshot.connectionState == ConnectionState.waiting)\n      return CircularProgressIndicator();\n    if (snapshot.hasError)\n      return Text('خطأ: \${snapshot.error}');\n    return ListView.builder(itemCount: snapshot.data!.length, ...);\n  },\n) ⏳",
  ),
  QAEntry(
    keywords: ["streambuilder", "stream builder", "stream"],
    answer:
        "StreamBuilder للبيانات المباشرة:\nStreamBuilder<QuerySnapshot>(\n  stream: FirebaseFirestore.instance.collection('users').snapshots(),\n  builder: (context, snapshot) {\n    if (!snapshot.hasData) return CircularProgressIndicator();\n    final docs = snapshot.data!.docs;\n    return ListView.builder(itemCount: docs.length, ...);\n  },\n) 🌊",
  ),
  QAEntry(
    keywords: ["const", "كونست", "final", "late"],
    answer:
        "const vs final vs late:\n- const: قيمة ثابتة وقت الـ compile\n- final: قيمة تُعطى مرة واحدة وقت الـ runtime\n- late: تُعطى قيمة لاحقاً قبل الاستخدام\n// دائماً استخدم const للـ widgets الثابتة لتحسين الأداء!\nconst Text('Hello') ⚡",
  ),

  // ════════════════════════════════
  // 🧭 Navigation
  // ════════════════════════════════
  QAEntry(
    keywords: ["navigation", "نافيجيشن", "push", "pop", "تنقل"],
    answer:
        "Navigation الأساسي:\n// الانتقال\nNavigator.push(context, MaterialPageRoute(builder: (_) => NewScreen()));\n// الرجوع\nNavigator.pop(context);\n// استبدال الشاشة\nNavigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));\n// مسح كل الشاشات\nNavigator.pushAndRemoveUntil(..., (route) => false); 🧭",
  ),
  QAEntry(
    keywords: ["named route", "named routes", "routes", "routename"],
    answer:
        "Named Routes:\nMaterialApp(\n  initialRoute: '/',\n  routes: {\n    '/': (_) => HomeScreen(),\n    '/login': (_) => LoginScreen(),\n    '/profile': (_) => ProfileScreen(),\n  },\n)\n// الاستخدام:\nNavigator.pushNamed(context, '/profile');\n// مع بيانات:\nNavigator.pushNamed(context, '/profile', arguments: user); 🗺️",
  ),
  QAEntry(
    keywords: ["go_router", "gorouter", "go router", "routing"],
    answer:
        "go_router المكتبة الحديثة للـ routing:\ndependencies:\n  go_router: ^13.0.0\nfinal router = GoRouter(\n  routes: [\n    GoRoute(path: '/', builder: (_, __) => HomeScreen()),\n    GoRoute(path: '/profile/:id', builder: (_, state) {\n      final id = state.pathParameters['id']!;\n      return ProfileScreen(id: id);\n    }),\n  ],\n);\n// الاستخدام:\ncontext.go('/profile/123'); 🚀",
  ),
  QAEntry(
    keywords: [
      "pass data",
      "تمرير بيانات",
      "arguments",
      "constructor navigation"
    ],
    answer:
        "تمرير البيانات بين الشاشات:\n// الإرسال\nNavigator.push(context, MaterialPageRoute(\n  builder: (_) => DetailsScreen(item: myItem),\n));\n// الاستقبال\nclass DetailsScreen extends StatelessWidget {\n  final Item item;\n  const DetailsScreen({required this.item});\n} 📦",
  ),
  QAEntry(
    keywords: ["return data", "pop data", "إرجاع بيانات", "result navigation"],
    answer:
        "إرجاع بيانات من شاشة:\n// في الشاشة الثانية\nNavigator.pop(context, 'result data');\n// في الشاشة الأولى\nfinal result = await Navigator.push(context, MaterialPageRoute(builder: (_) => SecondScreen()));\nprint(result); // 'result data' 🔙",
  ),

  // ════════════════════════════════
  //  Forms & Validation
  // ════════════════════════════════
  QAEntry(
    keywords: ["form", "فورم", "validation", "فاليديشن", "formkey"],
    answer:
        "Form مع Validation:\nfinal _formKey = GlobalKey<FormState>();\nForm(\n  key: _formKey,\n  child: Column(children: [\n    TextFormField(\n      validator: (value) {\n        if (value!.isEmpty) return 'هذا الحقل مطلوب';\n        return null;\n      },\n    ),\n    ElevatedButton(\n      onPressed: () {\n        if (_formKey.currentState!.validate()) {\n          // البيانات صحيحة\n        }\n      },\n      child: Text('إرسال'),\n    ),\n  ]),\n) ✅",
  ),
  QAEntry(
    keywords: ["textformfield", "text form field", "form field"],
    answer:
        "TextFormField:\nTextFormField(\n  controller: _emailController,\n  keyboardType: TextInputType.emailAddress,\n  decoration: InputDecoration(\n    labelText: 'البريد الإلكتروني',\n    prefixIcon: Icon(Icons.email),\n    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),\n    filled: true,\n    fillColor: Colors.grey[100],\n  ),\n  validator: (v) => v!.contains('@') ? null : 'بريد غير صحيح',\n) 📧",
  ),
  QAEntry(
    keywords: [
      "email validation",
      "تحقق ايميل",
      "password validation",
      "تحقق كلمة مرور"
    ],
    answer:
        "Validators شائعة:\n// Email\nvalidator: (v) {\n  final regex = RegExp(r'^[\\w-\\.]+@([\\w-]+\\.)+[\\w]{2,4}');\n  return regex.hasMatch(v!) ? null : 'بريد غير صحيح';\n}\n// Password\nvalidator: (v) => v!.length >= 8 ? null : '8 أحرف على الأقل'\n// Phone\nvalidator: (v) => v!.length == 10 ? null : 'رقم غير صحيح' 📱",
  ),
  QAEntry(
    keywords: ["focus", "focusnode", "keyboard", "كيبورد", "next field"],
    answer:
        "FocusNode للتحكم بالكيبورد:\nfinal _emailFocus = FocusNode();\nfinal _passFocus = FocusNode();\nTextFormField(\n  focusNode: _emailFocus,\n  textInputAction: TextInputAction.next,\n  onFieldSubmitted: (_) => FocusScope.of(context).requestFocus(_passFocus),\n)\n// إغلاق الكيبورد:\nFocusScope.of(context).unfocus(); ⌨️",
  ),
  QAEntry(
    keywords: ["checkbox", "switch", "radio", "toggle"],
    answer:
        "أدوات الاختيار:\n// Checkbox\nbool _checked = false;\nCheckbox(value: _checked, onChanged: (v) => setState(() => _checked = v!))\n// Switch\nSwitch(value: _isOn, onChanged: (v) => setState(() => _isOn = v))\n// Radio\nRadio<String>(value: 'option1', groupValue: _selected, onChanged: (v) => setState(() => _selected = v!)) ☑️",
  ),
  QAEntry(
    keywords: ["dropdown", "dropdownbutton", "dropdownmenu", "قائمة منسدلة"],
    answer:
        "DropdownButtonFormField:\nString? _selected;\nDropdownButtonFormField<String>(\n  value: _selected,\n  decoration: InputDecoration(labelText: 'اختر'),\n  items: ['خيار 1', 'خيار 2'].map((item) {\n    return DropdownMenuItem(value: item, child: Text(item));\n  }).toList(),\n  onChanged: (v) => setState(() => _selected = v),\n  validator: (v) => v == null ? 'اختر قيمة' : null,\n) 📝",
  ),
  QAEntry(
    keywords: [
      "datepicker",
      "date picker",
      "timepicker",
      "time picker",
      "تاريخ"
    ],
    answer:
        "DatePicker:\nfinal date = await showDatePicker(\n  context: context,\n  initialDate: DateTime.now(),\n  firstDate: DateTime(2000),\n  lastDate: DateTime(2100),\n);\n// TimePicker:\nfinal time = await showTimePicker(\n  context: context,\n  initialTime: TimeOfDay.now(),\n); 📅",
  ),

  // ════════════════════════════════
  // 🔄 State Management
  // ════════════════════════════════
  QAEntry(
    keywords: ["state management", "ستيت مانجمنت", "إدارة الحالة"],
    answer:
        "أشهر حلول State Management:\n1. setState: للمشاريع الصغيرة\n2. Provider: بسيط وشائع ✅\n3. Riverpod: تطوير Provider\n4. BLoC: للمشاريع الكبيرة\n5. GetX: سهل وشامل\n6. MobX: مبني على Observables\nللمبتدئين: setState → Provider → Riverpod 🎯",
  ),
  QAEntry(
    keywords: ["provider", "بروفايدر", "changenotifier", "notifylisteners"],
    answer:
        "Provider:\n// 1. Model\nclass CounterModel extends ChangeNotifier {\n  int _count = 0;\n  int get count => _count;\n  void increment() { _count++; notifyListeners(); }\n}\n// 2. Provide\nChangeNotifierProvider(create: (_) => CounterModel(), child: MyApp())\n// 3. Consume\nfinal counter = context.watch<CounterModel>(); 🔄",
  ),
  QAEntry(
    keywords: ["riverpod", "ريفربود", "stateprovider", "futureprovider"],
    answer:
        "Riverpod:\nfinal counterProvider = StateProvider<int>((ref) => 0);\n// في الـ widget\nclass HomeScreen extends ConsumerWidget {\n  @override\n  Widget build(BuildContext context, WidgetRef ref) {\n    final count = ref.watch(counterProvider);\n    return Text('\$count');\n  }\n}\n// التعديل:\nref.read(counterProvider.notifier).state++; 🚀",
  ),
  QAEntry(
    keywords: ["bloc", "بلوك", "cubit", "flutter bloc"],
    answer:
        "Cubit (أبسط من BLoC):\nclass CounterCubit extends Cubit<int> {\n  CounterCubit() : super(0);\n  void increment() => emit(state + 1);\n}\n// الاستخدام:\nBlocProvider(create: (_) => CounterCubit(),\n  child: BlocBuilder<CounterCubit, int>(\n    builder: (context, count) => Text('\$count'),\n  ),\n) 🧊",
  ),
  QAEntry(
    keywords: ["getx", "get x", "getxcontroller", "obx"],
    answer:
        "GetX:\nclass CounterController extends GetxController {\n  var count = 0.obs;\n  void increment() => count++;\n}\n// الاستخدام:\nGet.put(CounterController());\nObx(() => Text('\${controller.count}'))\n// Navigation:\nGet.to(() => NewScreen());\nGet.back(); 🚀",
  ),
  QAEntry(
    keywords: ["inheritedwidget", "inherited widget", "inherited"],
    answer:
        "InheritedWidget هو الأساس الذي يبني عليه Provider:\nclass MyData extends InheritedWidget {\n  final int data;\n  const MyData({required this.data, required super.child});\n  static MyData of(BuildContext context) =>\n    context.dependOnInheritedWidgetOfExactType<MyData>()!;\n  @override\n  bool updateShouldNotify(MyData old) => data != old.data;\n} 🌳",
  ),

  // ════════════════════════════════
  //  API & JSON
  // ════════════════════════════════
  QAEntry(
    keywords: ["http", "api", "rest api", "ريكويست", "request"],
    answer:
        "HTTP Requests:\ndependencies:\n  http: ^1.2.0\n\nimport 'package:http/http.dart' as http;\n\nfinal response = await http.get(Uri.parse('https://api.example.com/users'));\nif (response.statusCode == 200) {\n  final data = jsonDecode(response.body);\n} 🌐",
  ),
  QAEntry(
    keywords: ["post request", "post", "send data", "ارسال بيانات"],
    answer:
        "POST Request:\nfinal response = await http.post(\n  Uri.parse('https://api.example.com/login'),\n  headers: {'Content-Type': 'application/json'},\n  body: jsonEncode({\n    'email': 'user@example.com',\n    'password': '123456',\n  }),\n);\nfinal data = jsonDecode(response.body); 📤",
  ),
  QAEntry(
    keywords: ["json", "jsonencode", "jsondecode", "fromjson", "tojson"],
    answer:
        "التعامل مع JSON:\nclass User {\n  final String name;\n  final int age;\n  User({required this.name, required this.age});\n  factory User.fromJson(Map<String, dynamic> json) => User(\n    name: json['name'],\n    age: json['age'],\n  );\n  Map<String, dynamic> toJson() => {'name': name, 'age': age};\n} 📋",
  ),
  QAEntry(
    keywords: ["dio", "دايو", "interceptor", "http client"],
    answer:
        "Dio (أقوى من http):\ndependencies:\n  dio: ^5.4.0\n\nfinal dio = Dio(BaseOptions(\n  baseUrl: 'https://api.example.com',\n  connectTimeout: Duration(seconds: 5),\n  headers: {'Authorization': 'Bearer \$token'},\n));\n\nfinal response = await dio.get('/users');\nfinal response = await dio.post('/login', data: {...}); 🦅",
  ),
  QAEntry(
    keywords: ["error handling", "try catch", "exception", "معالجة الاخطاء"],
    answer:
        "معالجة الأخطاء:\ntry {\n  final response = await dio.get('/users');\n  return User.fromJson(response.data);\n} on DioException catch (e) {\n  if (e.response?.statusCode == 401) throw UnauthorizedException();\n  if (e.type == DioExceptionType.connectionTimeout) throw TimeoutException();\n  throw ServerException(e.message);\n} catch (e) {\n  throw UnknownException();\n} ⚠️",
  ),
  QAEntry(
    keywords: ["token", "authorization", "bearer", "header", "auth header"],
    answer:
        "إضافة Token للطلبات:\n// Dio Interceptor\ndio.interceptors.add(InterceptorsWrapper(\n  onRequest: (options, handler) {\n    options.headers['Authorization'] = 'Bearer \$token';\n    return handler.next(options);\n  },\n));\n// http\nhttp.get(url, headers: {'Authorization': 'Bearer \$token'}); 🔑",
  ),
  QAEntry(
    keywords: ["refresh token", "token refresh", "401", "تجديد التوكن"],
    answer:
        "Refresh Token مع Dio:\ndio.interceptors.add(InterceptorsWrapper(\n  onError: (error, handler) async {\n    if (error.response?.statusCode == 401) {\n      await refreshToken();\n      final opts = error.requestOptions;\n      opts.headers['Authorization'] = 'Bearer \$newToken';\n      final response = await dio.fetch(opts);\n      return handler.resolve(response);\n    }\n    return handler.next(error);\n  },\n)); 🔄",
  ),

  // ════════════════════════════════
  // 🔥 Firebase
  // ════════════════════════════════
  QAEntry(
    keywords: ["firebase", "فايربيس", "firebase setup", "اعداد فايربيس"],
    answer:
        "إعداد Firebase:\n1. أنشئ مشروعاً في Firebase Console\n2. flutter pub add firebase_core\n3. dart pub global activate flutterfire_cli\n4. flutterfire configure\n5. في main():\nawait Firebase.initializeApp(\n  options: DefaultFirebaseOptions.currentPlatform,\n); 🔥",
  ),
  QAEntry(
    keywords: [
      "firestore",
      "cloud firestore",
      "firebase database",
      "قاعدة بيانات فايربيس"
    ],
    answer:
        "Cloud Firestore:\nfinal db = FirebaseFirestore.instance;\n// إضافة\nawait db.collection('users').add({'name': 'Saad', 'age': 25});\n// قراءة\nfinal snapshot = await db.collection('users').get();\nfinal users = snapshot.docs.map((doc) => doc.data()).toList();\n// مباشر\ndb.collection('users').snapshots() 🔥",
  ),
  QAEntry(
    keywords: [
      "firebase auth",
      "authentication",
      "تسجيل دخول فايربيس",
      "firebase login"
    ],
    answer:
        "Firebase Auth:\n// إنشاء حساب\nawait FirebaseAuth.instance.createUserWithEmailAndPassword(\n  email: email, password: password);\n// تسجيل الدخول\nawait FirebaseAuth.instance.signInWithEmailAndPassword(\n  email: email, password: password);\n// تسجيل الخروج\nawait FirebaseAuth.instance.signOut();\n// المستخدم الحالي\nFirebaseAuth.instance.currentUser 🔐",
  ),
  QAEntry(
    keywords: ["firebase storage", "رفع صورة", "upload image", "storage"],
    answer:
        "Firebase Storage لرفع الملفات:\nfinal ref = FirebaseStorage.instance.ref().child('images/\${DateTime.now()}.jpg');\nawait ref.putFile(imageFile);\nfinal url = await ref.getDownloadURL();\n// تحميل\nawait ref.getDownloadURL().then((url) {\n  // استخدم الرابط\n}); 📦",
  ),
  QAEntry(
    keywords: [
      "fcm",
      "push notification",
      "firebase messaging",
      "notifications",
      "إشعارات"
    ],
    answer:
        "Firebase Cloud Messaging:\ndependencies:\n  firebase_messaging: ^14.0.0\n\nFirebaseMessaging.onMessage.listen((message) {\n  print('Foreground: \${message.notification?.title}');\n});\nFirebaseMessaging.onMessageOpenedApp.listen((message) {\n  print('Opened: \${message.notification?.title}');\n});\nfinal token = await FirebaseMessaging.instance.getToken(); 🔔",
  ),
  QAEntry(
    keywords: ["firebase realtime database", "realtime", "rtdb"],
    answer:
        "Firebase Realtime Database:\nfinal db = FirebaseDatabase.instance.ref();\n// كتابة\nawait db.child('users/\$uid').set({'name': 'Saad'});\n// قراءة مرة\nfinal snapshot = await db.child('users').get();\n// استماع مباشر\ndb.child('messages').onValue.listen((event) {\n  final data = event.snapshot.value;\n}); 📡",
  ),
  QAEntry(
    keywords: ["google sign in", "google login", "تسجيل دخول جوجل"],
    answer:
        "Google Sign In:\ndependencies:\n  google_sign_in: ^6.0.0\nfinal googleUser = await GoogleSignIn().signIn();\nfinal googleAuth = await googleUser!.authentication;\nfinal credential = GoogleAuthProvider.credential(\n  accessToken: googleAuth.accessToken,\n  idToken: googleAuth.idToken,\n);\nawait FirebaseAuth.instance.signInWithCredential(credential); 🔵",
  ),

  // ════════════════════════════════
  //  Clean Architecture
  // ════════════════════════════════
  QAEntry(
    keywords: [
      "clean architecture",
      "clean arch",
      "architecture",
      "هيكلية",
      "بنية المشروع"
    ],
    answer:
        "Clean Architecture في Flutter:\nlib/\n├── core/ (shared utilities)\n├── data/\n│   ├── datasources/ (API, Local)\n│   ├── models/\n│   └── repositories/\n├── domain/\n│   ├── entities/\n│   ├── repositories/ (abstract)\n│   └── usecases/\n└── presentation/\n    ├── pages/\n    ├── widgets/\n    └── bloc/ 🏗️",
  ),
  QAEntry(
    keywords: ["repository pattern", "repository", "ريبوزيتوري", "data layer"],
    answer:
        "Repository Pattern:\n// Abstract\nabstract class UserRepository {\n  Future<User> getUser(String id);\n}\n// Implementation\nclass UserRepositoryImpl implements UserRepository {\n  final UserRemoteDataSource remote;\n  UserRepositoryImpl(this.remote);\n  @override\n  Future<User> getUser(String id) async {\n    final model = await remote.fetchUser(id);\n    return model.toEntity();\n  }\n} 📦",
  ),
  QAEntry(
    keywords: ["usecase", "use case", "domain layer", "business logic"],
    answer:
        "UseCase:\nclass GetUserUseCase {\n  final UserRepository repository;\n  GetUserUseCase(this.repository);\n  Future<User> call(String id) async {\n    return await repository.getUser(id);\n  }\n}\n// في الـ BLoC:\nfinal user = await getUserUseCase('user_id'); 🎯",
  ),
  QAEntry(
    keywords: [
      "dependency injection",
      "di",
      "get_it",
      "injectable",
      "حقن التبعيات"
    ],
    answer:
        "Dependency Injection مع get_it:\ndependencies:\n  get_it: ^7.6.0\n\nfinal sl = GetIt.instance;\nvoid setupDI() {\n  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(sl()));\n  sl.registerLazySingleton<GetUserUseCase>(() => GetUserUseCase(sl()));\n  sl.registerFactory<UserBloc>(() => UserBloc(sl()));\n}\n// الاستخدام:\nsl<UserBloc>() 💉",
  ),
  QAEntry(
    keywords: ["model", "entity", "dto", "mapper"],
    answer:
        "Model vs Entity:\n// Entity (Domain Layer - pure Dart)\nclass User {\n  final String id;\n  final String name;\n  User({required this.id, required this.name});\n}\n// Model (Data Layer - JSON)\nclass UserModel extends User {\n  UserModel({required super.id, required super.name});\n  factory UserModel.fromJson(Map json) =>\n    UserModel(id: json['id'], name: json['name']);\n  Map toJson() => {'id': id, 'name': name};\n} 📋",
  ),
  QAEntry(
    keywords: [
      "folder structure",
      "project structure",
      "هيكل المشروع",
      "تنظيم الملفات"
    ],
    answer:
        "هيكل المشروع المثالي:\nlib/\n├── config/ (routes, theme)\n├── core/ (constants, errors, utils)\n├── features/\n│   ├── auth/\n│   │   ├── data/\n│   │   ├── domain/\n│   │   └── presentation/\n│   └── home/\n└── main.dart\n\nكل Feature تحتوي: data, domain, presentation 📁",
  ),
  QAEntry(
    keywords: ["solid", "solid principles", "dry", "مبادئ البرمجة"],
    answer:
        "SOLID في Flutter:\nS - Single Responsibility: كل class مسؤولة عن شيء واحد\nO - Open/Closed: مفتوح للتوسع، مغلق للتعديل\nL - Liskov Substitution: الـ subclass تحل محل الـ parent\nI - Interface Segregation: interfaces صغيرة ومحددة\nD - Dependency Inversion: اعتمد على abstractions 📐",
  ),

  // ════════════════════════════════
  // ⚡ Performance
  // ════════════════════════════════
  QAEntry(
    keywords: ["performance", "أداء", "optimization", "تحسين", "slow"],
    answer:
        "تحسين أداء Flutter:\n1. استخدم const للـ widgets الثابتة\n2. ListView.builder بدل ListView\n3. تجنب إعادة بناء غير الضروري\n4. اضغط الصور\n5. استخدم RepaintBoundary\n6. تجنب setState الغير ضروري\n7. استخدم Isolates للحسابات الثقيلة ⚡",
  ),
  QAEntry(
    keywords: ["const widget", "const constructor", "constant"],
    answer:
        "const للأداء:\n// ✅ صح - يُبنى مرة واحدة\nconst Text('Hello')\nconst SizedBox(height: 16)\nconst Padding(padding: EdgeInsets.all(8), child: Text('Hi'))\n// ❌ خطأ - يُبنى عند كل setState\nText('Hello') // بدون const\nاستخدم flutter analyze لاكتشاف الـ const الناقصة ⚡",
  ),
  QAEntry(
    keywords: ["repaintboundary", "repaint boundary", "rebuild"],
    answer:
        "RepaintBoundary لتحسين الرسم:\nRepaintBoundary(\n  child: AnimatedWidget(), // يُعزل إعادة الرسم\n)\n// مفيد عندما يتحرك جزء صغير من الشاشة\n// بدونه: Flutter يُعيد رسم كل الشاشة\n// معه: يُعيد رسم الـ widget المُعزول فقط 🎨",
  ),
  QAEntry(
    keywords: ["isolate", "compute", "background thread", "ثريد"],
    answer:
        "Isolates للحسابات الثقيلة:\n// compute() للمهام البسيطة\nfinal result = await compute(heavyFunction, data);\n\n// Isolate للمهام المعقدة\nfinal isolate = await Isolate.spawn(heavyTask, port.sendPort);\n// مثال: parse JSON كبير\nfinal users = await compute(parseUsers, jsonString); 🧵",
  ),
  QAEntry(
    keywords: ["memory leak", "memory", "dispose", "تسريب الذاكرة"],
    answer:
        "تجنب Memory Leaks:\n@override\nvoid dispose() {\n  _controller.dispose();\n  _animationController.dispose();\n  _focusNode.dispose();\n  _scrollController.dispose();\n  _streamSubscription.cancel();\n  super.dispose();\n}\n// دائماً dispose() كل controller 🗑️",
  ),
  QAEntry(
    keywords: ["lazy loading", "pagination", "infinite scroll", "تحميل تدريجي"],
    answer:
        "Lazy Loading مع Pagination:\n_scrollController.addListener(() {\n  if (_scrollController.position.pixels ==\n      _scrollController.position.maxScrollExtent) {\n    loadMoreData(); // تحميل الصفحة التالية\n  }\n});\n// أو استخدم مكتبة:\ninfinite_scroll_pagination: ^4.0.0 📄",
  ),
  QAEntry(
    keywords: ["cached", "cache", "caching", "تخزين مؤقت"],
    answer:
        "التخزين المؤقت:\n// الصور\ncached_network_image: ^3.3.0\nCachedNetworkImage(imageUrl: url, placeholder: (_, __) => CircularProgressIndicator())\n// HTTP\nhive للـ local caching\nflutter_cache_manager لإدارة الـ cache\n// API Response\nتخزين النتائج في SharedPreferences أو Hive 💾",
  ),
  QAEntry(
    keywords: [
      "flutter profile",
      "performance profiling",
      "devtools",
      "flutter inspect"
    ],
    answer:
        "Flutter DevTools للـ profiling:\n1. flutter run --profile\n2. افتح: http://127.0.0.1:9100\n3. Performance tab: راقب الـ FPS\n4. Memory tab: راقب استهلاك الذاكرة\n5. Widget Inspector: فحص الشجرة\n6. Network tab: راقب الطلبات 🔍",
  ),

  // ════════════════════════════════
  //  Git & GitHub
  // ════════════════════════════════
  QAEntry(
    keywords: ["git", "جيت", "version control", "تحكم بالإصدارات"],
    answer:
        "Git الأساسيات:\ngit init → إنشاء repository\ngit add . → إضافة التغييرات\ngit commit -m 'message' → حفظ التغييرات\ngit push → رفع للـ GitHub\ngit pull → تحميل التغييرات\ngit status → عرض الحالة 🐙",
  ),
  QAEntry(
    keywords: ["git branch", "branch", "فرع", "branching"],
    answer:
        "Git Branches:\ngit branch → عرض الـ branches\ngit checkout -b feature/login → إنشاء branch جديد\ngit checkout main → التبديل للـ main\ngit merge feature/login → دمج الـ branch\ngit branch -d feature/login → حذف الـ branch ✂️",
  ),
  QAEntry(
    keywords: ["gitignore", ".gitignore", "git ignore"],
    answer:
        ".gitignore في Flutter:\n# Flutter\n*.dart_tool/\n.flutter-plugins\n.flutter-plugins-dependencies\nbuild/\n.packages\n\n# IDE\n.idea/\n.vscode/\n*.iml\n\n# Sensitive\n.env\ngoogle-services.json\nGoogleService-Info.plist 🙈",
  ),
  QAEntry(
    keywords: ["git commit", "commit message", "conventional commits"],
    answer:
        "Conventional Commits:\nfeat: إضافة ميزة جديدة\nfix: إصلاح bug\nchore: تغييرات عامة\nrefactor: إعادة هيكلة الكود\ndocs: تحديث التوثيق\nstyle: تنسيق الكود\ntest: إضافة tests\n\nمثال: git commit -m 'feat: add login screen' 📝",
  ),
  QAEntry(
    keywords: ["pull request", "pr", "code review", "مراجعة الكود"],
    answer:
        "Pull Request Best Practices:\n1. branch واحد لكل feature\n2. وصف واضح للتغييرات\n3. screenshots للتغييرات البصرية\n4. اذكر الـ issue المرتبط: Closes #123\n5. راجع الكود قبل الـ PR\n6. أضف tests إن أمكن ✅",
  ),
  QAEntry(
    keywords: ["git conflict", "merge conflict", "conflict", "تعارض"],
    answer:
        "حل Merge Conflicts:\n1. git pull origin main\n2. افتح الملفات المتعارضة\n3. ابحث عن:\n<<<<<<< HEAD\nكودك\n=======\nالكود الآخر\n>>>>>>> branch-name\n4. اختر الصحيح أو ادمجهما\n5. git add .\n6. git commit ⚔️",
  ),
  QAEntry(
    keywords: ["github actions", "ci cd", "cicd", "automation", "deployment"],
    answer:
        "GitHub Actions لـ Flutter:\n# .github/workflows/flutter.yml\nname: Flutter CI\non: [push, pull_request]\njobs:\n  build:\n    runs-on: ubuntu-latest\n    steps:\n      - uses: actions/checkout@v3\n      - uses: subosito/flutter-action@v2\n      - run: flutter pub get\n      - run: flutter analyze\n      - run: flutter test 🤖",
  ),
  QAEntry(
    keywords: ["git stash", "stash", "حفظ مؤقت"],
    answer:
        "Git Stash:\ngit stash → حفظ التغييرات مؤقتاً\ngit stash list → عرض الـ stashes\ngit stash pop → استرجاع آخر stash\ngit stash apply stash@{0} → استرجاع stash معين\ngit stash drop → حذف الـ stash\nمفيد عند التبديل بين الـ branches! 💼",
  ),
  QAEntry(
    keywords: ["git log", "git history", "سجل التغييرات"],
    answer:
        "Git Log:\ngit log → عرض كل الـ commits\ngit log --oneline → عرض مختصر\ngit log --graph → شكل بياني\ngit diff → عرض التغييرات\ngit show <commit-hash> → تفاصيل commit معين\ngit blame <file> → من كتب كل سطر 📜",
  ),
  QAEntry(
    keywords: ["git reset", "git revert", "undo commit", "تراجع"],
    answer:
        "التراجع في Git:\ngit reset --soft HEAD~1 → تراجع commit مع الاحتفاظ بالتغييرات\ngit reset --hard HEAD~1 → تراجع commit وحذف التغييرات\ngit revert <hash> → عكس commit بأمان (الأفضل)\ngit restore <file> → تراجع تغييرات ملف ⏪",
  ),

  // ════════════════════════════════
  //  أخطاء شائعة
  // ════════════════════════════════
  QAEntry(
    keywords: ["overflow", "renderflex", "pixel overflow", "bottom overflowed"],
    answer:
        "حل RenderFlex Overflow:\n1. اغلّف بـ SingleChildScrollView\n2. استخدم Expanded أو Flexible\n3. استخدم Wrap بدل Row\n4. قلل الـ padding\n5. في Column طويل: Expanded(child: ListView())\n6. تجنب وضع ListView داخل Column بدون Expanded 🛠️",
  ),
  QAEntry(
    keywords: ["null", "null safety", "null check", "لا يمكن أن يكون null"],
    answer:
        "Null Safety:\nString? nullable → قد يكون null\nString nonNull → لا يمكن null\nnullable ?? 'default' → قيمة افتراضية\nnullable?.length → safe access\nnullable! → force (احذر!)\nif (nullable != null) → فحص\nlate String name → يُعطى لاحقاً ⚠️",
  ),
  QAEntry(
    keywords: ["setState called after dispose", "dispose error", "mounted"],
    answer:
        "خطأ setState after dispose:\nif (mounted) setState(() {}); // ✅\n// أو في async:\nasync function() {\n  final data = await fetchData();\n  if (!mounted) return; // ✅\n  setState(() { _data = data; });\n}\n// تحقق من mounted قبل أي setState في async 🛡️",
  ),
  QAEntry(
    keywords: ["type error", "type mismatch", "cast error", "خطأ نوع البيانات"],
    answer:
        "Type Errors:\n// ❌ خطأ\nfinal name = data['name']; // dynamic\n// ✅ صح\nfinal name = data['name'] as String;\nfinal age = data['age'] as int;\n// آمن\nfinal name = data['name']?.toString() ?? '';\nاستخدم fromJson() دائماً لتحويل JSON 🔒",
  ),

  // ════════════════════════════════
  //  Local Storage
  // ════════════════════════════════
  QAEntry(
    keywords: [
      "sharedpreferences",
      "shared preferences",
      "local storage",
      "تخزين محلي"
    ],
    answer:
        "SharedPreferences:\nfinal prefs = await SharedPreferences.getInstance();\n// حفظ\nawait prefs.setString('token', 'abc123');\nawait prefs.setBool('isLoggedIn', true);\n// قراءة\nfinal token = prefs.getString('token') ?? '';\nfinal isLogged = prefs.getBool('isLoggedIn') ?? false;\n// حذف\nawait prefs.remove('token'); 💾",
  ),
  QAEntry(
    keywords: ["hive", "هايف", "hive database", "nosql local"],
    answer:
        "Hive للتخزين السريع:\ndependencies:\n  hive_flutter: ^1.1.0\n\nawait Hive.initFlutter();\nfinal box = await Hive.openBox('settings');\n// حفظ\nbox.put('theme', 'dark');\n// قراءة\nfinal theme = box.get('theme', defaultValue: 'light');\n// للـ objects تحتاج TypeAdapter 📦",
  ),
  QAEntry(
    keywords: ["sqflite", "sqlite", "sql", "قاعدة بيانات محلية"],
    answer:
        "sqflite للـ SQL المحلي:\nfinal db = await openDatabase('app.db', version: 1,\n  onCreate: (db, version) async {\n    await db.execute('CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT)');\n  },\n);\n// إضافة\nawait db.insert('users', {'name': 'Saad'});\n// قراءة\nfinal users = await db.query('users'); 🗄️",
  ),

  // ════════════════════════════════
  // 🧪 Testing
  // ════════════════════════════════
  QAEntry(
    keywords: ["testing", "test", "unit test", "widget test", "اختبار"],
    answer:
        "أنواع الـ Tests في Flutter:\n1. Unit Test: اختبار دالة أو class\n2. Widget Test: اختبار widget واحد\n3. Integration Test: اختبار التطبيق كاملاً\nملف الـ test: test/\nflutter test → لتشغيل الـ tests 🧪",
  ),
  QAEntry(
    keywords: ["unit test", "mock", "mockito"],
    answer:
        "Unit Test مع Mockito:\ntest('getUser returns user', () async {\n  final mockRepo = MockUserRepository();\n  when(mockRepo.getUser('1')).thenAnswer((_) async => User(id: '1', name: 'Saad'));\n  final useCase = GetUserUseCase(mockRepo);\n  final user = await useCase('1');\n  expect(user.name, 'Saad');\n}); ✅",
  ),
];

String getAnswer(String userMessage) {
  final msg = userMessage.toLowerCase().trim();
  for (final qa in qaData) {
    for (final keyword in qa.keywords) {
      if (msg.contains(keyword.toLowerCase())) {
        return qa.answer;
      }
    }
  }
  return "عذراً، ما عندي معلومات عن هالموضوع بعد 🙏\nجرب تسألني عن:\nWidgets • Navigation • Forms • State Management\nAPI • Firebase • Clean Architecture • Git • Performance";
}
