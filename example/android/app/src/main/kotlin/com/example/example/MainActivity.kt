package com.example.example

<<<<<<< HEAD
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity()
=======
import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    GeneratedPluginRegistrant.registerWith(this)
  }
}
>>>>>>> 6ea7619b0c4855f116e03dd3710624c9481936c2
