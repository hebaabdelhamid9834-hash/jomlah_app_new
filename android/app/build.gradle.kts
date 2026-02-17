import java.util.Properties
import java.io.File

plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
    id("dev.flutter.flutter-gradle-plugin")
    id("com.google.gms.google-services")
}

android {
    namespace = "com.jomlah.android"
    compileSdk = 36
    ndkVersion = "28.0.13004108"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    defaultConfig {
        applicationId = "com.jomlah.android"
        minSdk = flutter.minSdkVersion
        targetSdk = 36
        versionCode = 20
        versionName = flutter.versionName
        multiDexEnabled = true
    }

    // Load keystore properties
    val keystoreProperties = Properties().apply {
        val file = File(rootDir, "key.properties")
        if (file.exists()) {
            load(file.inputStream())
        }
    }

    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String? ?: "key"
            keyPassword = keystoreProperties["keyPassword"] as String? ?: "123123"
            storeFile = keystoreProperties["storeFile"]?.let { file(it as String) } ?: file("new_jomlah.jks")
            storePassword = keystoreProperties["storePassword"] as String? ?: "123123"
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = false
            isShrinkResources = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
        debug {
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    implementation("androidx.multidex:multidex:2.0.1")

    // Firebase
    implementation(platform("com.google.firebase:firebase-bom:33.6.0"))
    implementation("com.google.firebase:firebase-messaging")
    implementation("com.google.firebase:firebase-auth")
    implementation("com.google.firebase:firebase-analytics")
    implementation("com.google.firebase:firebase-firestore")

    // Google Play services auth
    implementation("com.google.android.gms:play-services-auth:20.7.0")

    // Core library desugaring
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.4")
}
