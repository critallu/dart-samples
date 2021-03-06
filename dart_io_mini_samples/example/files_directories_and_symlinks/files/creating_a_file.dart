// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Use the File `create()` method to create a file.
/// To create intermediate directories, set the `recursive` argument to
/// `true` (default is `false`).

import 'dart:io';

void main() {

  // Get the system temp directory.
  var systemTempDir = Directory.systemTemp;

  // Creates dir/, dir/subdir/, and dir/subdir/file.txt in the system
  // temp directory.
  new File('${systemTempDir.path}/dir/subdir/file.txt').create(recursive: true)
    // The created file is returned as a Future.
    .then((file) {
      print(file.path);
  });
}