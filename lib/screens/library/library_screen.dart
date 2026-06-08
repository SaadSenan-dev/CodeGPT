import 'package:flutter/material.dart';

// ── بيانات المحادثات المحفوظة ──
class SavedConversation {
  final String title;
  final String preview;
  final String date;
  final String category;
  final IconData categoryIcon;
  final Color categoryColor;

  SavedConversation({
    required this.title,
    required this.preview,
    required this.date,
    required this.category,
    required this.categoryIcon,
    required this.categoryColor,
  });
}

final List<SavedConversation> savedConversations = [
  SavedConversation(
    title: "Flutter State Management",
    preview: "How to use Provider vs Riverpod in large apps...",
    date: "Today",
    category: "Programming",
    categoryIcon: Icons.code_rounded,
    categoryColor: Color(0xFF6366F1),
  ),
  SavedConversation(
    title: "Clean Architecture Guide",
    preview: "Explained the layers: data, domain, presentation...",
    date: "Today",
    category: "Programming",
    categoryIcon: Icons.code_rounded,
    categoryColor: Color(0xFF6366F1),
  ),
  SavedConversation(
    title: "Essay: The Future of AI",
    preview: "Artificial intelligence is transforming every industry...",
    date: "Yesterday",
    category: "Writing",
    categoryIcon: Icons.edit_note_rounded,
    categoryColor: Color(0xFF10B981),
  ),
  SavedConversation(
    title: "Calculus Explained Simply",
    preview: "The derivative measures how a function changes...",
    date: "Yesterday",
    category: "Math",
    categoryIcon: Icons.calculate_rounded,
    categoryColor: Color(0xFFF59E0B),
  ),
  SavedConversation(
    title: "Syrian History Overview",
    preview: "Syria's history spans over 10,000 years of civilization...",
    date: "Jun 5",
    category: "History",
    categoryIcon: Icons.history_edu_rounded,
    categoryColor: Color(0xFFEF4444),
  ),
  SavedConversation(
    title: "Business Plan Template",
    preview: "Executive summary, market analysis, financial projections...",
    date: "Jun 4",
    category: "Business",
    categoryIcon: Icons.business_center_rounded,
    categoryColor: Color(0xFF059669),
  ),
  SavedConversation(
    title: "Arabic Grammar Rules",
    preview: "Understanding the root system in Arabic language...",
    date: "Jun 3",
    category: "Languages",
    categoryIcon: Icons.translate_rounded,
    categoryColor: Color(0xFF8B5CF6),
  ),
];

// ── الشاشة ──
class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  String _selectedFilter = "All";
  final List<String> _filters = ["All", "Today", "Yesterday", "Older"];

  List<SavedConversation> get _filtered {
    if (_selectedFilter == "All") return savedConversations;
    return savedConversations.where((c) => c.date == _selectedFilter).toList();
  }

  void _deleteConversation(int index) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Conversation deleted"),
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        action: SnackBarAction(
          label: "Undo",
          textColor: Colors.white70,
          onPressed: () {},
        ),
      ),
    );
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
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
                            "Library",
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
                        "${savedConversations.length} saved conversations",
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                  Container(
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFEEEEEE)),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.search_rounded,
                          size: 18, color: Color(0xFF555555)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            // ── Filters ──
            SizedBox(
              height: 36,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _filters.length,
                itemBuilder: (context, index) {
                  final filter = _filters[index];
                  final isSelected = _selectedFilter == filter;
                  return GestureDetector(
                    onTap: () => setState(() => _selectedFilter = filter),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isSelected
                              ? Colors.black
                              : const Color(0xFFE5E5E5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          filter,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: isSelected ? Colors.white : Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 12),

            // ── List ──
            Expanded(
              child: _filtered.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.folder_open_rounded,
                              size: 52, color: Colors.grey[300]),
                          const SizedBox(height: 12),
                          Text(
                            "No saved conversations",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                      itemCount: _filtered.length,
                      itemBuilder: (context, index) {
                        final conv = _filtered[index];
                        return _ConversationCard(
                          conversation: conv,
                          onDelete: () => _deleteConversation(index),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ConversationCard extends StatelessWidget {
  final SavedConversation conversation;
  final VoidCallback onDelete;

  const _ConversationCard({
    required this.conversation,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEEEEEE)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              // ── Category Icon ──
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: conversation.categoryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  conversation.categoryIcon,
                  color: conversation.categoryColor,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),

              // ── Content ──
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      conversation.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0A0A0A),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      conversation.preview,
                      style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: conversation.categoryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            conversation.category,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: conversation.categoryColor,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          conversation.date,
                          style:
                              TextStyle(fontSize: 11, color: Colors.grey[400]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),
              GestureDetector(
                onTap: onDelete,
                child: Icon(Icons.more_vert_rounded,
                    color: Colors.grey[400], size: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
