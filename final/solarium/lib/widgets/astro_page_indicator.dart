// Copyright (c) 2021 Razeware LLC

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical
// or instructional purposes related to programming, coding, application
// development or information technology.  Permission for such use, copying,
// modification, merger, publication, distribution, sublicensing, creation of
// derivative works, or sale is expressly withheld.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AstroPageIndicator extends StatelessWidget {
  final Function(int)? onPageChanged;
  const AstroPageIndicator({Key? key, this.onPageChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(0);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(1);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(2);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(3);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(4);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(5);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(6);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(7);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(8);
          },
        ),
        GestureDetector(
          child: Container(
            width: 10,
            height: 10,
            margin: const EdgeInsets.only(right: 5.0, bottom: 10.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          onTap: () {
            if (onPageChanged != null) onPageChanged!(9);
          },
        ),
      ],
    );
  }
}
