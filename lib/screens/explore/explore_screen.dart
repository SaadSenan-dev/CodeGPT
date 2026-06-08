import 'package:flutter/material.dart';

class ExploreCategory {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  ExploreCategory({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}

final List<ExploreCategory> exploreCategories = [
  ExploreCategory(
    title: "Programming",
    subtitle: "Flutter, Dart, Python & more",
    icon: Icons.code_rounded,
    color: Color(0xFF6366F1),
  ),
  ExploreCategory(
    title: "Writing",
    subtitle: "Essays, stories & content",
    icon: Icons.edit_note_rounded,
    color: Color(0xFF10B981),
  ),
  ExploreCategory(
    title: "Science",
    subtitle: "Physics, biology & chemistry",
    icon: Icons.science_rounded,
    color: Color(0xFF3B82F6),
  ),
  ExploreCategory(
    title: "Math",
    subtitle: "Algebra, calculus & statistics",
    icon: Icons.calculate_rounded,
    color: Color(0xFFF59E0B),
  ),
  ExploreCategory(
    title: "History",
    subtitle: "World events & civilizations",
    icon: Icons.history_edu_rounded,
    color: Color(0xFFEF4444),
  ),
  ExploreCategory(
    title: "Languages",
    subtitle: "Arabic, English & more",
    icon: Icons.translate_rounded,
    color: Color(0xFF8B5CF6),
  ),
  ExploreCategory(
    title: "Business",
    subtitle: "Marketing, finance & strategy",
    icon: Icons.business_center_rounded,
    color: Color(0xFF059669),
  ),
  ExploreCategory(
    title: "Design",
    subtitle: "UI/UX, graphics & branding",
    icon: Icons.palette_rounded,
    color: Color(0xFFEC4899),
  ),
  ExploreCategory(
    title: "Health",
    subtitle: "Fitness, nutrition & wellness",
    icon: Icons.favorite_rounded,
    color: Color(0xFFDC2626),
  ),
  ExploreCategory(
    title: "Music",
    subtitle: "Theory, genres & artists",
    icon: Icons.music_note_rounded,
    color: Color(0xFF7C3AED),
  ),
  ExploreCategory(
    title: "Travel",
    subtitle: "Destinations & culture",
    icon: Icons.flight_rounded,
    color: Color(0xFF0284C7),
  ),
  ExploreCategory(
    title: "Food",
    subtitle: "Recipes & cuisines",
    icon: Icons.restaurant_rounded,
    color: Color(0xFFD97706),
  ),
];

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<ExploreCategory> _filtered = exploreCategories;

  void _onSearch(String query) {
    setState(() {
      _filtered = exploreCategories
          .where((c) =>
              c.title.toLowerCase().contains(query.toLowerCase()) ||
              c.subtitle.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios)),
                      const Text(
                        "Explore",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF0A0A0A),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Discover topics to chat about",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE5E5E5)),
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: _onSearch,
                      decoration: InputDecoration(
                        hintText: "Search topics...",
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(Icons.search_rounded,
                            color: Colors.grey[400], size: 20),
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: _filtered.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_off_rounded,
                              size: 48, color: Colors.grey[300]),
                          const SizedBox(height: 12),
                          Text(
                            "No topics found",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 20),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 1.55,
                      ),
                      itemCount: _filtered.length,
                      itemBuilder: (context, index) {
                        final cat = _filtered[index];
                        return _CategoryCard(category: cat);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final ExploreCategory category;
  const _CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFEEEEEE)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: category.color.withOpacity(0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(category.icon, color: category.color, size: 20),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  category.subtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey[500],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
