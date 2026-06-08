import 'package:ex_6/widgets/inputbox/bottomarea/bottom_area.dart';
import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final Function(String) onSendMessage;

  const InputBox({super.key, required this.onSendMessage});

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  final TextEditingController _controller = TextEditingController();
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _hasText = _controller.text.trim().isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (!_hasText) return;
    widget.onSendMessage(_controller.text.trim());
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1,
                        offset: Offset(1, 1),
                        color: Colors.black12,
                      )
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) {
                        return BottomArea();
                      },
                    );
                  },
                  icon: Icon(Icons.add),
                  iconSize: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(26),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Ask SyriaGPT",
                        hintStyle: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 20,
                        ),
                        isDense: true,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(0),
                      ),
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF1A1A1A),
                      ),
                      maxLines: 5,
                      minLines: 1,
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 200),
                    child: _hasText
                        ? GestureDetector(
                            key: ValueKey("send"),
                            onTap: _sendMessage,
                            child: Container(
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                Icons.arrow_upward_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          )
                        : SizedBox(
                            key: ValueKey("voice"),
                            width: 44,
                            height: 44,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_voice_outlined),
                              iconSize: 28,
                              color: Colors.black,
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
