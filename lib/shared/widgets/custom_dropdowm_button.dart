import 'package:flutter/material.dart';
import 'package:shoe_store/shared/enum/gender_type.dart';

import 'package:shoe_store/shared/extensions/build_context_extension.dart';
import 'package:shoe_store/shared/widgets/app_text.dart';

class CustomDropdown extends StatefulWidget {
  final List<GenderType> items;
  final String hint;
  final ValueChanged<GenderType> onChanged;
  final Widget? icon;

  const CustomDropdown({
    super.key,
    required this.items,
    required this.hint,
    required this.onChanged,
    this.icon,
  });

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;
  GenderType? _selectedItem;
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (!_focusNode.hasFocus) {
      _removeOverlay();
    }
    setState(() {});
  }

  void _toggleDropdown() {
    if (_overlayEntry != null) {
      _removeOverlay();
    } else {
      _focusNode.requestFocus();
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height + 5),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.items.map((e) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedItem = e;
                      _removeOverlay();
                      _focusNode.unfocus();
                    });
                    widget.onChanged(e);
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: AppText(
                      e.toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: Focus(
          focusNode: _focusNode,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(
                color: _focusNode.hasFocus
                    ? context.colors.primaryColor
                    : context.colors.offlineColor,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  _selectedItem?.toString() ?? widget.hint,
                  style: TextStyle(
                    fontSize: 15,
                    color: _selectedItem == null
                        ? context.colors.placeholderColor
                        : context.colors.black,
                  ),
                ),
                widget.icon ?? const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
