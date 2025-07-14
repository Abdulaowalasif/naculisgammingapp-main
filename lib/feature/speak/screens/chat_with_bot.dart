import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naculisgammingapp/core/const/app_string.dart';
import 'package:naculisgammingapp/core/const/image_icon.dart';
import '../../../core/theme/theme_data.dart';
import '../widgets/gems_dialog.dart';

class ChatWithBotScreen extends StatelessWidget {
  const ChatWithBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.square(50),
        child: _ChatBotTopBar(),
      ),
      bottomNavigationBar: _CustomRecordWidgets(),
      body: ChatScreen(),
    );
  }
}

class _ChatBotTopBar extends StatelessWidget {
  const _ChatBotTopBar();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageAndIconConst.chatbot),
          const SizedBox(width: 10),
          Text(
            'chat bot'.tr,  // <-- Added translation key
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 10),
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: const Color(0xFF0B84FF),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomRecordWidgets extends StatelessWidget {
  const _CustomRecordWidgets();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 150,
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.mic, color: Colors.white),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (_) => GemsDialog(
                      onClose: () => Get.back(),
                      onConfirm: () => Get.back(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Text(
              AppStringEn.holdToSpeak.tr, // This is already using GetX translations
              maxLines: 1,
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).brightness==Brightness.dark?Colors.white:Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatefulWidget {
  final String message;
  final bool isSender;

  const ChatBubble({required this.message, required this.isSender, super.key});

  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>();
    final screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: screenWidth - 150),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: widget.isSender
                ? Theme.of(context).primaryColor
                : colors?.messageBackground,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.black, width: 1),
          ),
          child: Text(
            widget.message.tr, // <-- Translates message key
            style: const TextStyle(color: Colors.black, fontSize: 15),
            softWrap: true,
          ),
        ),
      ),
    );
  }
}

class VoiceMessageBubble extends StatelessWidget {
  final bool isSender;

  const VoiceMessageBubble({required this.isSender, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSender ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.graphic_eq),
            Icon(Icons.graphic_eq),
            Icon(Icons.graphic_eq),
            Icon(Icons.graphic_eq),
            Icon(Icons.graphic_eq),
            SizedBox(width: 8),
            Icon(CupertinoIcons.mic),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          ChatBubble(message: 'hello'.tr, isSender: false),
          VoiceMessageBubble(isSender: true),
          ChatBubble(message: 'wassup_ready_to_chat'.tr, isSender: false),
          ChatBubble(message: 'wassup_ready_to_chat'.tr, isSender: false),
          VoiceMessageBubble(isSender: true),
          VoiceMessageBubble(isSender: true),
          ChatBubble(
            message: 'privacy_policy_short_summary'.tr,
            isSender: false,
          ),
        ],
      ),
    );
  }
}
