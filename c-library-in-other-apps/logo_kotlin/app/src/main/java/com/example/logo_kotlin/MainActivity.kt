package com.example.logo_kotlin

import android.os.Bundle
import android.text.Html
import android.util.TypedValue
import androidx.appcompat.app.AppCompatActivity
import androidx.core.text.HtmlCompat
import androidx.core.widget.TextViewCompat
import com.example.logo_kotlin.databinding.ActivityMainBinding

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.sampleText.textSize = 8f

        TextViewCompat.setAutoSizeTextTypeUniformWithConfiguration(
            binding.sampleText, 20, 300, 1, TypedValue.COMPLEX_UNIT_PX
        )

        // Example of a call to a native method
        val logo_black: String = logoBlack()
        binding.sampleText.text = logo_black
    }

    /**
     * A native method that is implemented by the 'logo_kotlin' native library,
     * which is packaged with this application.
     */
    external fun logoBlack(): String

    companion object {
        // Used to load the 'logo_kotlin' library on application startup.
        init {
            System.loadLibrary("logo_kotlin")
        }
    }
}