import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddPegawaiController extends GetxController {
  TextEditingController nip = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void addPegawai() async {
    if (nip.text.isNotEmpty && name.text.isNotEmpty && email.text.isNotEmpty) {
      try {
        UserCredential userCredential =
            await auth.createUserWithEmailAndPassword(
          email: email.text,
          password: "password",
        );

        String? uid = userCredential.user?.uid;

        await firestore.collection("pegawai").doc(uid).set({
          "nip": nip.text,
          "name": name.text,
          "email": email.text,
          "uid": uid,
          "createdAt": DateTime.now().toIso8601String()
        });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password')
          Get.snackbar("Password Error", "Password terlalu lemah !");
        if (e.code == 'email-already-in-use')
          Get.snackbar("Email Error", "Email ini sudah digunakan !");
      } catch (e) {
        Get.snackbar(
            "Terjadi kesalahan", "Terjadi kesalahan hubungi administrator !");
        print("ERROR");
        print(e);
        print("ERROR");
      }
    } else {
      Get.snackbar(
          "Terjadi kesalahan !", "NIP, Nama dan Email tidak boleh kosong !");
    }
  }
}
