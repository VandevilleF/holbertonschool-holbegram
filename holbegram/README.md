Holbegram
=========

Hello Holbies welcome to the final Flutter Project. It’s going to be special and I hope that you have fun doing it.

In general, developing a mobile application is a complex and challenging task. There are many frameworks available to develop a mobile application. Android provides a native framework based on Java language and iOS provides a native framework based on Objective-C / Shift language. However, to develop an application supporting both the OS’s, we need to code in two different languages using two different frameworks. To solve this problem there is Flutter – a simple and high-performance framework based on Dart language that provides high performance by rendering the UI directly in the operating system’s canvas rather than through the native framework.

To lighten up your mood get you ready for this amazing project you can start by clicking on this [LINK](/rltoken/1BdEBUOyOctbctpoIFfp9A "LINK")

I know it might be very challenging to do such a project with limited knowledge in flutter but we are Holberton students and WE CAN DO ANYTHING. I believe in you guys

Let’s begin the Journey.

Resources
---------

**Read or watch**:

*   [Dart - Cheatsheet](/rltoken/vNcJwx9uH1oO97J3weOg2Q "Dart - Cheatsheet")
*   [FlutterFire Overview](/rltoken/2pqfv23C5fIPlhQuc8-lzw "FlutterFire Overview")
*   [Getting started with Firebase on Flutter](/rltoken/HT04HWjRJGP6J-TRB6USKA "Getting started with Firebase on Flutter")
*   [Get Started with Firebase Authentication on Flutter](/rltoken/RPOfxJurI2FTxqvM3_Rz7g "Get Started with Firebase Authentication on Flutter")
*   [Cloud Storage on Flutter](/rltoken/P6NOA7DAhr4Nj51tnZxaFQ "Cloud Storage on Flutter")
*   [Layouts in Flutter](/rltoken/w2ZjcQ9A0uJy4l1z2sehcQ "Layouts in Flutter")
*   [Introduction to widgets](/rltoken/bnUF2_6TmceGXZgRMpyW_A "Introduction to widgets")
*   [Cloudinary Storage Images uploading | Flutter](/rltoken/MemgVBz8hW7Rh5Ty_qtpbA "Cloudinary Storage Images uploading | Flutter")

**Every Flutter Widgets**

*   [Every Flutter Widget Explained](/rltoken/pUuGD0ZBuuTUsLAsubY2hA "Every Flutter Widget Explained")

Dependencies
------------

*   [Firebase Database Plugin for Flutter](/rltoken/XxBGYPjJR_VnypLH1WKkDw "Firebase Database Plugin for Flutter")
*   [Firebase Auth for Flutter](/rltoken/PCtSeP6u5iTMeYF2GCkuQg "Firebase Auth for Flutter")
*   [Cupertino Icons](/rltoken/Tcw5xQE-I82BKJXtqGlHfQ "Cupertino Icons")
*   [Image Picker plugin for Flutter](/rltoken/Vfe2qOIdL0RopYOAYTk3pg "Image Picker plugin for Flutter")
*   [BottomNavyBar](/rltoken/nQ4YnR5B2dJLE_3MMrbhCQ "BottomNavyBar")
*   [provider](/rltoken/Csmd0Q5cp4RNN7Sy5sDxgg "provider")
*   [Uuid](/rltoken/yUJfdeEq9PDuDC6DEI2u2A "Uuid")
*   [Flutter Pull To Refresh](/rltoken/lWP8nNM9OzPRFC0A5Kk-3w "Flutter Pull To Refresh")

Requirements
------------

**Create your project :**

Open you’re command-line tool

*   `flutter create holbegram`
*   `cd holbegram`
*   `flutter run`

**Step up your Firebase**

For the backend, we are going to use Firebase(Firebase is a Backend-as-a-Service (BaaS) app development platform that provides hosted backend services such as (`a real-time database`, `cloud storage`, `authentication`, `crash reporting`, `machine learning`, `remote configuration`) and hosting for your static files. However, for storing and managing images, we will use Cloudinary, which is a cloud service that provides an easy-to-use solution for managing images and videos, including features for storing, transforming, and delivering media content. Cloudinary will handle the storage and retrieval of image files, while Firebase will handle the authentication and database functionalities.

Let’s start…

go to `https://firebase.google.com/` and create an account then Let’s create a new project in firebase.

Go to Firebase Console and click Add Project and then you have to go through some steps.

**First**, we are going to build a fire\_base app called `holbegram`:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/effcaadc5053cd0f13321f3da0ca7af485e48499.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=e58a0e72c4dcea29befe9a56b456e328a51676db9c1bf2df2ed6c1ce6ad01647)

**Second** Disable Google Analytics for this project:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/75475181f194def86264d0898b5ccde396c21725.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=01535bf9db4ffc0d17000d8502a307d88528dff92065c9ba169e0419298fd066)

**Authentication**

Click on Enable the Authentication: Enable the Email/Password

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b25d3fd7c4d0bd2ffb3dd8308ecaf22f00794548.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=e397c1ddcc8665bda6a298e940af634015a5c5620385f3d123a840d06989cbc1)

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/7f78a5264c27e64db051eeec0edd2ed872c9beba.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7765ee10010dca72640f8c258e19129b220aa0627250a64d344d749463cc22c5)

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/60f7d7c2e8b28345beb62365d71a737182693ff2.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=4669963f62aa9c23b735ab0710b596d19da72fe0f42c704404a8d1cc49b3747b)

**Database**

Well done! Now you are going to move to the next task which is creating a database.

To do that follow the following steps:

1- Go to Firestore Database then click on Create Database.

2- Choose “start in test mode”

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/fcb8a7236705b8a58455fa12972d20c66712cf64.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=c9484b2e3cd7867a05fcd4de9bb8a45865a845450f4a37989430eac40344a889)

3- choose the location that is close to you.

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/2cccf7ed30807a79d66640d0c862b62b41e28750.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=6230cf0bc159880aa1f81d762c685b8e3129b2ea2ca3973f4978208645092393)

4- Go to rules:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/ee6587e9101eb092270dbe1582bfc85bfc951c95.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=eb817ef9e413c74e95d7bb39bec5d0a8333ec87aaf1e2c8692457b59825c9f31)

Finally, press Publish

**Adding Firebase to our App**

**So now let’s add Firebase to our app:**

**If you want to use Android Follow the Android Support**

**If you want to work with iOS follow the iOS Support**

**Adding Android support**
==========================

Registering the App

In order to add Android support to our Flutter application, select the Android logo from the dashboard. This brings us to the following screen:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/79c7e4222312d48e0c162322f2d138f476e2d0c0.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=15704493249448385b556e4a1f33c0861c178aff432776708b9be38e4f763e60)

The most important thing here is to match up the Android package name that you choose here with the one inside of our application.

The structure consists of at least two segments. A common pattern is to use a domain name, a company name, and the application name:

`com.example.holbegram`

Once you’ve decided on a name, open `android/app/build.gradle` in your code editor and update the applicationId to match the `Android package name`:

Example of File `android/app/build.gradle`

    ...
    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId 'com.example.holbegram'
        ...
    }
    ...


You can skip the app nickname and debug signing keys at this stage. Select Register app to continue.

**Downloading the Config File**

The next step is to add the `Firebase configuration` file into our Flutter project. This is important as it contains the API keys and other critical information for Firebase to use.

Select Download `google-services.json` from this page:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/29220467a87b78d62f287d431dc5c308470c01b9.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=43627e470a8e4c223f878b0085381f009513e2ac9ee0bc78927ffbec543b7b15)

Next, move the `google-services.json` file to the `android/app` directory within the Flutter project.

**Adding the Firebase SDK**

We’ll now need to update our Gradle configuration to include the Google Services plugin.

Open `android/build.gradle` in your code editor and modify it to include the following:

Example of File `android/build.gradle`

    buildscript {
      repositories {
        // Check that you have the following line (if not, add it):
        google()  // Google's Maven repository
      }
      dependencies {
        ...
        // Add this line
        classpath 'com.google.gms:google-services:4.3.13'
      }
    }

    allprojects {
      ...
      repositories {
        // Check that you have the following line (if not, add it):
        google()  // Google's Maven repository
        ...
      }
    }


Finally, update the app level file at`android/app/build.gradle` to include the following:

Example of File `android/app/build.gradle`

    apply plugin: 'com.android.application'
    // Add this line
    apply plugin: 'com.google.gms.google-services'

    dependencies {
      // Import the Firebase BoM
     implementation platform('com.google.firebase:firebase-bom:30.2.0')

      // Add the dependencies for any other desired Firebase products
      // https://firebase.google.com/docs/android/setup#available-libraries
    }


With this update, we’re essentially applying the Google Services plugin as well as looking at how other Flutter Firebase plugins can be activated such as Analytics.

From here, run your application on an Android device or simulator. If everything has worked correctly, you should get the following message in the dashboard:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/eca3dbd42b0d5c6af14cb2292bb7ef321b9d6fa3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=7ecca963ff8d9215b5404a1682e71d2c60585019a33c5f70f1fe7700013fe783)

**Adding iOS support**
======================

In order to add Firebase support for iOS, we have to follow a similar set of instructions.

Head back over to the dashboard and select Add app and then iOS icon to be navigated to the setup process.

**Registering an App**

You Should have **Xcode** installed in your PC:

Once again, we’ll need to add an “iOS Bundle ID”. It is possible to use the “Android package name” for consistency:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/f45889853f3e6c71ef12e7a13889c9378e89c472.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=c823850d51e7a320472cff6f459cedb84a7f1c7306e870ef3361e885c51072f6)

You’ll then need to make sure this matches up by opening the iOS folder up in `Xcode`

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/9d7946cee42b4fe2f94cd07c95c42b3a58f1285f.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=0bf2640549793f77bb3a16e5fafbd690f346af6f18791afdb2c5b409690c5e5a)

*   General

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/83c1b8343fb170c1162d3eb0d022aa50fb04ce06.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=074f7782316094fec9872d2a596b9186c9f545ec5f404b4813ebf6d7ed6cba24)

Now go back to your firebase and add the iOS Bundle ID

after that Download the configuration file

**Downloading the Config File**

Drag and Drop the file `GoogleService-Info.plist` and move this into the root of your Xcode project within `Runner`:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b13f1b0452f1145f980d439a4dcda17a2d4d0f5c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=ab27335d47875815d6d3c655e24c701803ea989c5ab1ac6bf543b47826ebb5b6)

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/d8d7fb980a6bf8db79fca2b2f029d4f423767b80.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=d8b2d25c09f52c65902a9ee9ce597c9d278238840b76233dd7deee1fcc181e78)

Be sure to move this file within Xcode to create the proper file references.

Tasks
-----

### 0\. Let’s Begin

mandatory

Now after we set our Firebase we gonna start build our Application, First we are going to create Three screens `Login Page` `Sign up Page` and `Upload image Page`.

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/138de426ea182abb86ae90b76e6517ab4794ba2a.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=913630fed69fc3b7e2fe1bf4c39a140941899dadf8677c0b35c795d340db224f) ![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/c8e3e89811dfc10d61c27bf5be23cfbf1eb8ca99.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=cee04cae606e708cb58974dee687fbfb360a384783fb339e39435c6fa4c50bd1) ![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/b15f8b2a55c6d8ba52fe0adf343bc5acd40a2ceb.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=a5ed21136512e7388e5075802e1092dff8808a6bf97f3c08313e9852c5b9efa6)

**In your lib folder**:

*   create new folder named **screens**:
    *   inside the **screens** folder create 3 files named:
        *   login\_screen.dart
        *   signup\_screen.dart
        *   upload\_image\_screen.dart

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/09362f244f473704661a68ffa94e15bcd3ecd97d.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=bcfd82dbbbc711f10d5fcbef350576b1d16bcc52f03874c913567c79eb8065f0)

*   create new folder named **widgets**:
    *   inside the **widgets** folder create 1 file named:
        *   text\_field.dart

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/c3a2e750023c4588d8e57fe57fb327183a9df5bb.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=e36dc7f4dfc6994880796601641367c3a3f7f283fc2341f78f1382c2b41d943a)

**Initialization App**

Install these packages:

*   [firebase\_auth](/rltoken/PCtSeP6u5iTMeYF2GCkuQg "firebase_auth") : `flutter pub add firebase_auth`
*   [firebase\_database](/rltoken/XxBGYPjJR_VnypLH1WKkDw "firebase_database") : `flutter pub add firebase_database`
*   [cloudinary\_flutter](/rltoken/Kkv6W9cD9E26zqpnJxR7gg "cloudinary_flutter"): `flutter pub add cloudinary_flutter`

Change the function`void main()` to:

    Future main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(const MyApp());
    }


**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\main.dart ,lib\screens\login_screen.dart, lib\screens\sigup_screen.dart, lib\screens\upload_image_screen.dart, lib\widgets\text_field.dart`

### 1\. Text Widget

mandatory

In the `widgets/text_field.dart` :

In order to learn how a reusable widget works, we will build this TextField widget .

Create a new `StatelessWidget` called `TextFieldInput` with these attributes:

*   `controller`: TextEditingController
*   `ispassword`: bool
*   `hintText`: String
*   `suffixIcon`: Widget it cloud be `null`
*   `keyboardType`: TextInputType

After the `Widget build`

Return `TextField()`:

*   `keyboardType` takes `keyboardType`
*   `controller` takes `controller`
*   `cursorColor` takes `Color.fromARGB(218, 226, 37, 24)`
*   `decoration` takes `InputDecoration`:
    *   `hintText` takes `hintText`
    *   `border` takes `OutlineInputBorder`:
        *   `borderSide`: `BorderSide`
            *   color : transparent
            *   style: none
    *   `focusedBorder`: `OutlineInputBorder`
        *   `border` takes `OutlineInputBorder`:
            *   `borderSide`: `BorderSide`
                *   `color` : `transparent`
                *   `style`: `none`
    *   `enabledBorder`: `OutlineInputBorder`
        *   `border` takes `OutlineInputBorder`:
            *   `borderSide`: `BorderSide`
                *   `color` : `transparent`
                *   `style`: `none`
    *   `filled` : `true`
    *   `contentPadding` : `EdgeInsets.all(8)`
    *   `suffixIcon` takes `suffixIcon`
*   `textInputAction` : `next`
*   `obscureText` takes `ispassword`

For Example :

If we put the `hintText` : `Email` it’s giong to be like this:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/9b678015040ae3573a5cec7de257eae6d9992254.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=fc33a8d6c463e6ce402dc3f12b09b842afbda41ec6d1048589a8140c6ff500a3)

Another Example :

If we put the `hintText` : `Password` and `ispassword`: `true` it’s giong to be like this:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/48113af9741c78b783e988135934a252c8da6c61.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=659a96339324af9791e555132a6884b53255c23d689267f760fa46b6029becd0)

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\widgets\text_field.dart`

### 2\. Login Page

mandatory

Login Page

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/e80a4da25022391cd487de3ca468c0ea499bd2b0.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=a7439ca47b299f719d0314cd10b8a3a257d327bcca6c9e7539ac1df9a090399f)

You will need this [Logo](/rltoken/7_1UNJISW2XoioyxNbfB_w " Logo") and this [Font](/rltoken/tuT3KosLdbfQHRl_vZk0OQ "Font")

After That Create two folders inside the `assets` :

*   `images`
*   `fonts`

Put the Logo inside the Images folder and Billabong fonts inside the fonts folder

Inside the `pubspec.yaml`

*   add this `- assets/images/` under the `assets`:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/75ae4cad40cc06dc44676aa49cbd43ebf32e654c.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=3078da21b74b6ccaaa7b2a7faa9979b6b615b5fdab9b869d36bee70a4d048010)

*   add this under the fonts

        - family: Billabong
          fonts:
            - asset: assets/fonts/Billabong.ttf
            - asset: assets/fonts/InstagramSans.ttf


![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/11/be4ca97fb69abb3065edd3587478bef1d7e8ad43.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=becdb13489e88770ae65940fdf8f429d46e58dcd77d158dc2aa31106ce30100e)

**Now** Inside `login_screen.dart` :

*   Create a new `StatefulWidget` called `LoginScreen` that takes these arguments.
    *   `emailController` : `TextEditingController`
    *   `passwordController`: `TextEditingController`
    *   `_passwordVisible` : `bool` default takes `true`

**Dispose** only the `TextEditingController` arguments

**initState** for the `_passwordVisible`, before that, you add `@override` annotation

*   Returns: `Scaffold()` Inside the scaffold add a `SingleChildScrollView` in the body

    *   `SingleChildScrollView` takes `Column`:
        *   `Horizontally of the Column will be : min`
        *   `Verticale of the Column will be : center`
    *   Inside of the `Column` :

        *   `children[]`:

            *   Set the `SizedBox` of `height` to `28`
            *   Create a Text widget that contains the name of the app `Holbegram` with the `Billabong` Font and the font size of `50`
            *   The logo will be inside an Image widget (`width: 80,height: 60`)
            *   Create `Padding`
                *   Set `EdgeInsets.symmetric` to `horizontal` : `20`
                *   Child takes a `Column`
                *   Inside the `Children` of the `Column` we are going to call the `TextFieldInput` that we created. First let’s keep our screen Sized
            *   `SizedBox` takes height: `28`
        *   Email `TextFieldInput`

                * `controller` : `emailController`

                * `ispassword` : flase

                * `hintText` : `Email`

                * `keyboardType` : `TextInputType.emailAddress`


    *   Set the `SizedBox` of `height` to `24`

    *   Password `TextField`

        *   `TextFieldInput`
            *   `controller` : `passwordController`
            *   `ispassword` : `!_passwordVisible`
            *   `hintText` : `Password`
            *   `keyboardType` : `TextInputType.visiblePassword`
            *   `suffixIcon` takes `IconButton`
                *   `alignment` : `bottomLeft`
                *   If the `_passwordVisible` is `ture` `icon` takes `visibility` or `icon` takes `visibility_off`
                *   use setState inside the `onPressed: ()` to change the `_passwordVisible` when pressed
*   Set the `SizedBox` of `height` to `28`

*   `SizedBox`

    *   `height`: `48`
    *   `width` : `double.infinity`
    *   `child` : `ElevatedButton`:

        *   `style`:
            *   `ButtonStyle`
                *   `backgroundColor` :`WidgetStateProperty.all(Color.fromARGB(218, 226, 37, 24),)`
        *   `onPressed` leave it empty for the moment
        *   `child` : `Text`:
            *   `Log in`
            *   `style`:
                *   `TextStyle(color: Colors.white)` After this.
*   Set the `SizedBox` of `height` to `24`

*   `Row`

    *   `mainAxisAlignment`: `center`
    *   `children`:
        *   `Text` : `Forgot your login details?`
        *   `Text` : `Get help logging in` with `fontWeight` : `bold`
*   `Flexible`:

    *   `flex`: `0`
    *   `child`: `Container()`
*   Set the `SizedBox` of `height` to `24`

*   `Divider` : `thickness` to `2`

*   `Padding`:

*   Set `vertical` padding to `12`

*   `child` takes `Row`:

    *   `mainAxisAlignment`: `center`
    *   `children`:
        *   `Text` : `Don't have an account`
        *   `TextButton`:
            *   `onPressed` leave it empty for the moment
            *   `child` takes `Text` with a String `Sign up` set `fontWeight` to `bold` and `color` to `fromARGB(218, 226, 37, 24)`
    *   Set the `SizedBox` of `height` to `10`
*   `Row`:

    *   `children`:
        *   Create two `Flexible` widgets with `child` takes `Divider` : `thickness` to `2` between the two widget create a `Text` with string `" OR "`
*   Set the `SizedBox` of `height` to `10`

*   `Row`:

    *   `mainAxisSize` : `min`
    *   `mainAxisAlignment` : `center`
    *   `children`:
        *   Takes an Image network with `width: 40` `height: 40`
            *   Image : [Image Link](https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png "Image Link")
        *   `Text` : `"Sign in with Google"`

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\login_screen.dart`

### 3\. Signup Page

mandatory

Signup Page

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/24850d82e5025b87cfe2401b37504c7f9f729ab7.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=c806b91974f9f840885a0890668792ea533807a7245480c19326a400a898ec37)

Inside `signup_screen.dart` create :

*   Create a new `StatefulWidget` called `SignUp` takes these arguments.
    *   `emailController` : `TextEditingController`
    *   `usernameController` : `TextEditingController`
    *   `passwordController`: `TextEditingController`
    *   `passwordConfirmController`: `TextEditingController`
    *   `_passwordVisible` : `bool` default takes `true`

Let’s `dispose` them like we did in the Login Page and don’t forget `initState` for the `_passwordVisible`

Now! we are going to do the `Sign Up` page. It is very similar to the previous task therefore, I want you to try this on your own.

If you face any difficulties check the previous task or do as any great developer does: Google it!

In the bottom there is a String “Log in”

It’s a `TextButton` that navigates you to the Log in page

If you want to do it alone it’s a plus too or jump to the next task.

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\sigup_screen.dart`

### 4\. Linking the Pages

mandatory

Inside `login_screen.dart`:

In the `TextButton` widget that contains`Sign Up` as a `Text`

we will change the `onPressed` to make it navigate to the Sign Up page:

*   Use `Navigator.push`:
    *   Assign `SignUp()` and don’t forget to import it

Inside `signup_screen.dart`

In the `TextButton` widget that contain`Log in` as a `Text`

we will change the `onPressed` to make it navigate to the Log in page:

*   Use `Navigator.push`:
    *   Assign `LoginScreen()` and don’t forget to import it

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\login_screen.dart, lib\screens\sigup_screen.dart`

### 5\. Let's Create Our Models

mandatory

In the `lib` folder:

*   Create a new folder called `models` that contains two file :
    *   `user.dart`
    *   `posts.dart`

In the `lib/models/user.dart` create a class called `Users`:

*   Properties:
    *   `uid`: String
    *   `email`: String
    *   `username`: String
    *   `bio`: String
    *   `photoUrl`: String
    *   `followers`: List`<dynamic>`
    *   `following`: List`<dynamic>`
    *   `posts`: List`<dynamic>`
    *   `saved`: List`<dynamic>`
    *   `searchKey` : String

Create a new instance called `fromJson` that accepts `DocumentSnapshot` as parameter

*   Prototype :
    *   `static Userd fromSnap(DocumentSnapshot snap)`

Create a variable inside the `fromJson` called `snapshot` that is going to take the data from `snap`

Return every value inside it.

Create a method called `toJson()` that returns a map representation of the `Users`

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib/models/user.dart, lib/models/posts.dart,`

### 6\. Auth Methods

mandatory

Create a new folder inside the `lib` called `methods`:

Inside `lib/methods` create a new file called `auth_methods.dart`

Now inside `auth_methods.dart`:

Start by adding the packages needed :

*   `Cloud_firestore`
*   `Firebase_auth`
*   `http (for Cloudinary API requests)`

*   Create a new Class called `AuthMethode` that’s going to contain our Methods.


Inside the class, create two arguments:

*   `_auth` that extends from `FirebaseAuth`
*   `_firestore` that extends from `FirebaseFirestore`

`_auth` = `FirebaseAuth.instance`

`_firestore` = `FirebaseFirestore.instance`

Create a new instance for Login called `login` that takes two arguments `email`: String, `password`: String. Return a String

*   Prototype :
    *   `Future<String> login({required String email,required String password,})`
        *   Check if the email or the password are empty:
            *   Return `Please fill all the fields`
        *   Use `_auth.signInWithEmailAndPassword` method from `FirebaseAuth`
        *   Return `success`
            *   On success navigate to the home screen

Now go back to the login screen and edit the submit button to call login() while passing the corresponding parameters and use the function’s return value to show a snackbar with the text “Login” on success

Create a new instance for Sign Up called `signUpUser` that takes these arguments `email`: String , `password`: String , `username`: String , `file`: Uint8List. Return a String

*   Prototype :
    *   `Future<String> signUpUser({required String email,required String password,required String username,Uint8List? file,})`
        *   Check if the `email` or the `password`, `username` are empty:
            *   Return `Please fill all the fields`
        *   Use `_auth.createUserWithEmailAndPassword` method from `FirebaseAuth`
        *   `userCredential` takes the return of the `_auth.createUserWithEmailAndPassword`

**Now** right! after using `_auth.createUserWithEmailAndPassword` put this:

*   `User`takes `userCredential.user`;

The arguments that we just passed in to Sign Up put it to our `Users` Class

After that:

*   `await _firestore.collection("users").doc(user.uid).set(users.toJson());`
*   Return `success`

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib/methods/auth_methods.dart`

### 7\. Upload User Image

mandatory

Let’s put our file in the `screens` inside a new folder called `auth` :

Create a new folder inside `screens/auth` called `methods`:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2023/1/197d8d071c1bf504f62185889aaeb1e7268a43c7.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=534bb55c391103fa1185f7ef863a64098b6afd5cf2ab732c8afc0214cdbeb60f)

Inside `methods` folder create a new file called `user_storage.dart`:

Copy and paste the Code into your file

    import 'dart:typed_data';
    import 'package:uuid/uuid.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';

    class StorageMethods {
      final String cloudinaryUrl = "https://api.cloudinary.com/v1_1/your-cloud-name/image/upload";
      final String cloudinaryPreset = "your-upload-preset";

      Future<String> uploadImageToStorage(
          bool isPost,
          String childName,
          Uint8List file,
      ) async {
        String uniqueId = const Uuid().v1();
        var uri = Uri.parse(cloudinaryUrl);
        var request = http.MultipartRequest('POST', uri);
        request.fields['upload_preset'] = cloudinaryPreset;
        request.fields['folder'] = childName;
        request.fields['public_id'] = isPost ? uniqueId : '';

        var multipartFile = http.MultipartFile.fromBytes('file', file, filename: '$uniqueId.jpg');
        request.files.add(multipartFile);

        var response = await request.send();
        if (response.statusCode == 200) {
          var responseData = await response.stream.toBytes();
          var jsonResponse = jsonDecode(String.fromCharCodes(responseData));
          return jsonResponse['secure_url'];
        } else {
          throw Exception('Failed to upload image to Cloudinary');
        }
      }
    }



Inside the `upload_image_screen.dart`:

Create a `StatefulWidget` Called `AddPicture` that accepts three arguments :

*   `final String email`
*   `final String password`
*   `final String username`

And contains a variable called `_image`

*   `Uint8List? _image`

Create two methods:

The first one is Called `selectImageFromGallery()`:

*   Prototype
    *   `void selectImageFromGallery()`
    *   Return the value to variable `_image`
*   Use `imagepicker`

the second one is Called `selectImageFromCamera()`:

*   Prototype
    *   `void selectImageFromCamera()`
    *   Return the value to variable `_image`
*   Use `imagepicker`

**Now**

Let’s Create this UI:

The [Link To the Icon](https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png "Link To the Icon")

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/6e67866cb45b4f9a5566e8bdd96434c994e93f85.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=9f3957afdc40270ed0de706664ed61b3882d7945b4e8690ce8d44c18f67109f1)

Make the camera icon and the gallery icon linking with these functions

Replace the user icon with your image:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/b20daf8cf9cce7daef82cec6fb3e4170d6e81250.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=4cb0473fca8fcc968ad1a39ff77d55f654c5ea57eae12d714747521674b59e7d)

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\auth\methods\user_storege.dart, lib\screens\auth\upload_image_screen.dart`

### 8\. Passing Data Between Pages

mandatory

We are going to pass the sign up data to our upload picture page:

Inside `signup_screen.dart`

In the `onPressed` where the Text contain `Sign up`

use the `Navigator` to move to the `AddPicture` page and passing :

*   `email`
*   `username`
*   `password`

Inside `upload_image_screen.dart`:

**Use widget when you want to call the data example**:

`widget.email` or assign it to a variable `var email = widget.email`

Replace `John Doe` with the `username`

On the Next button call the method `signUpUser` that we created in the `auth_methods.dart`

Passing the correct data to the `signUpUser`

*   `email` takes `email`
*   `username` takes `username`
*   `password` takes `password`
*   `file` takes `_image`
*   on `success` show a `snackbar` with a `success` on it

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\auth\signup_screen.dart, lib\screens\auth\upload_image_screen.dart`

### 9\. Providers

mandatory

Create a new method called `getUserDetails` inside `auth_methods.dart` that gets the current user details and return `Userd.fromSnap` within the details

Inside the `lib/` create a new folder called `providers` that contain `user_provider.dart` file:

Inside `user_provider.dart` Create a class called `UserProvider` mixin with the `ChangeNotifier`

Create privet variables:

*   `_user` takes `Userd`
*   `_authMethode` takes `AuthMethode()`

Create a getter for `_user`

Create a method called `refreshUser` prototype:

*   Future refreshUser():
    *   `user` takes `getUserDetails` method from `AuthMethode()`
    *   `_userd` takes `user`
    *   at the end add `notifyListeners()`

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\methods\auth_methods.dart, lib\providers`

### 10\. Home Page

mandatory

We are going to create the Home page now :

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/88520f0e2186e12e41d93b10cb312de6acc83bee.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=cb845b36415fdfe2fb68655c6b5b2045f295d2e1d7709e225407c3b6bfb0cbd0)

**First** we are going to create all pages:

*   Create a new folder inside the screens folder called `Pages`:

    *   `Feed()` : `feed.dart`
    *   `Search()` : `search.dart`
    *   `AddImage()`: `add_image.dart`
    *   `Favorite()` : `favorite.dart`
    *   `Profile()` : `profile_screen.dart`

To start with the bottom navigation bar

Install this package:

*   [BottomNavyBar](/rltoken/nQ4YnR5B2dJLE_3MMrbhCQ "BottomNavyBar")

Inside the `widgets` folder:

*   Create a new file called `bottom_nav.dart`
    *   Create a `StatefulWidget` called `BottomNav`
    *   `_currentIndex` : `0`
    *   `_pageController` assign to `PageController`
    *   `initState()`:
        *   `_pageController` : PageController()
    *   `dispose()`
    *   Return `Scaffold`body `PageView`
        *   `controller` : `_pageController`
    *   `children` takes all the pages:
        *   `Feed()`
        *   `Search()`
        *   `AddImage()`
        *   `Favorite()`
        *   `Profile()`
    *   `bottomNavigationBar` : `BottomNavyBar`
        *   `selectedIndex` : `_currentIndex`
        *   `showElevation` : `true`
        *   `itemCornerRadius` : `8`
        *   `curve` : `Curves.easeInBack`
        *   `onItemSelected`: `onPageChanged` takes an arguments called index
            *   in `setState` `_currentIndex` takes `index`
    *   `items` it’s a list of `BottomNavyBarItem` we are going to create Five of them and every each one has a different `Icon` , `Text`:
        *   Inside `BottomNavyBarItem`:
        *   `icon`: `Icons`
        *   `title` : `Text`
            *   `TextStyle`:
                *   `fontSize` : `25`
                *   `fontFamily`: `Billabong`
            *   `activeColor` : `red`
            *   `textAlign`: `center`
            *   `inactiveColor`: `black`

**Now**

Inside `home.dart`

Create `StatefulWidget` called `Home` that returns `BottomNav()`

Inside `feed.dart`

Create `StatelessWidget` called `Feed` that returns `Scaffold()`:

*   With an `AppBar` contains `Holbegram` with `Billabong` font and the logo like in the Picture and a `Row` with two Icons
*   Body return widget called `Posts()` that we are going to create later

In the `models/post.dart`

*   Create a class called `Post`
    *   `caption` : `String`
    *   `uid`: `String`
    *   `username` : `String`
    *   `likes` : `List`
    *   `postId` : `String`
    *   `datePublished` : `DateTime`
    *   `postUrl` : `String`
    *   `profImage` : `String`

Create the instance `fromJson` like we did in the Users Class

Don’t forget the `toJson` method

Inside `utils/posts.dart`:

Create a `StatefulWidget` Called `Posts` using the `getUser`

**Use the provider and make necessary changes if required**

*   Return `StreamBuilder` :
    *   `stream` : `FirebaseFirestore.instance.collection('posts').snapshots()`
    *   if `snapshot.hasError` return `Error {snapshot.error}`
    *   if `snapshot.hasData` return `ListView.builder`
    *   `data` = `snapshot.data.docs`
        *   Return `SingleChildScrollView`
        *   `Child` : `Container`:
        *   `margin`: `EdgeInsetsGeometry.lerp(const EdgeInsets.all(8), const EdgeInsets.all(8), 10)`
        *   `height` : `540`
        *   `decoration`: `color fromARGB(255, 255, 255, 255), borderRadius circular(25)`
        *   `child` : `Column` > `children` > `Container` > `child` > `row` > `children`
            *   `padding EdgeInsets.all(8.0)` > `child` > `Container width: 40, height: 40,` > `decoration BoxDecoration(shape: BoxShape.circle)` > `image` > `data['profImage'] fit : cover`
            *   `Text` : `username`
            *   `Spacer`
            *   `IconButton`:
                *   `Icon` : `more_horiz`
                *   `onPressed` : Show snack with `Text` “Post Deleted”
            *   `SizedBox` :
                *   `child` : `Text` that contain the `caption`
            *   `SizedBox` :
                *   `height` : `10`
            *   `Container` :
                *   `width` : `350`
                *   `height` : `350`
                *   `decoration` : `BorderRadius.circular` `25`
                *   `image` : `postUrl`
                *   `fit` : `cover`

Add the missing `Icons` that appears in the `Picture`

Return `CircularProgressIndicator()` if the data still fetching

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\home.dart, lib\screens\pages\feed.dart, lib\screens\pages\search.dart, lib\screens\pages\add_image.dart, lib\screens\pages\favorate.dart, lib\screens\pages\profile_screen.dart, models/post.dart, utils/posts.dart`

### 11\. Posts Storge Methods

mandatory

Inside the `Pages` folder create a new folder called `methods`:

Inside the `methods` create a new file called `post_storage.dart`:

*   Create a class called `PostStorage`:
    *   `_firestore` takes : `FirebaseFirestore.instance`

**Methods**

Create a method Called `uploadPost` takes `caption`, `uid`, `username`, `profImage` as a `String` and `image` as `Uint8List`

*   Method prototype : `Future<String> uploadPost(String caption,String uid,String username,String profImage,Uint8List image)`

should use `uploadImageToCloudinary` from `lib\screens\auth\methods\user_storege.dart`

Return “`Ok`” On success else Return the error

Create another method called `deletePost` that accept `postId` and `publicId` as an arguments to delete the post

*   Method prototype : `Future<void> deletePost(String postId, string publicId)`

Inside `utils/posts.dart`:

*   In the `onPressed()` Before the `snackbar` that shows “Post Deleted” Call the the `deletePost` it should delete your post when you pressed on the icon

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`

### 12\. Add a post

mandatory

Inside `add_image.dart` we are going to create this UI:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/ba9288292c9e3260060f022c7a40f0ef94f6ca7d.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=36f42416f330cbaa42c143d12c61c640a7d77f9d0d06645879baf4bf62e3e835)

[Link to the Icon](https://cdn.pixabay.com/photo/2017/11/10/05/24/add-2935429_960_720.png "Link to the Icon ")

**Make necessary changes if required**

Like we did in the `AddPicture`

*   Use `image_picker`
    *   Using the two option to add an image \[`gallery`, `camera`\]

Call `uploadPost` when you press on `Post` and make sure to redirect to the `Home page`

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\pages\add_image.dart`

### 13\. Search page

mandatory

Inside `search.dart` we are going to create this UI:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/a22f19f7732ea369bbe4777e0a912e8948b214b4.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125605Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=17893cea8d14e64c84f65d8bd23c0729efd4424bc0bf73c267a8b3dccb6ab5a8)

**Make necessary changes if required**

*   Display all images uploaded to `Cloudinary`.
*   Use `StaggeredGridView`

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\pages\search.dart`

### 14\. Favorite page

mandatory

Inside `favorite.dart` we are going to create this UI:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/e8c14474c9b6315cb5aeff9616b7f5fe9b0054e2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125606Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=1a06b646e6c5bb9fa1528126d5f5fb304ceec62495109d7cc94b732d375513b3)

**Make necessary changes if required**

when clicking on the `Icons.bookmark` in the Feed the image get saved and it appears in the Favorite page

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\pages\favorite.dart`

### 15\. Profile

mandatory

Inside `profile.dart` we are going to create this UI:

![](https://s3.eu-west-3.amazonaws.com/hbtn.intranet/uploads/medias/2022/12/cb96776b56e542882e5d58b85d19be6869754c5e.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA4MYA5JM5DUTZGMZG%2F20250721%2Feu-west-3%2Fs3%2Faws4_request&X-Amz-Date=20250721T125606Z&X-Amz-Expires=86400&X-Amz-SignedHeaders=host&X-Amz-Signature=0f49f3e49094f5ea95cfcb1b78ea18c397c0e962268ed48c1a5bdbb3bad9aa6e)

The icon at the top is for Logout.

**Make necessary changes if required**

Retrieve and display the necessary data, including images stored on Cloudinary.

And **congratulations** you made it

**Repo:**

*   GitHub repository: `holbertonschool-holbegram`
*   Directory: `holbegram`
*   File: `lib\screens\pages\profile_screen.dart`
