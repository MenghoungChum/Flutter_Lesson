import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:localstorage_statemanagement/controller/student_controller.dart';
import 'package:localstorage_statemanagement/model/student_model.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _ageController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _ageController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _showStudentDialog({StudentModel? studentToUpdate}) {
    if (studentToUpdate != null) {
      _nameController.text = studentToUpdate.name;
      _emailController.text = studentToUpdate.email;
      _ageController.text = studentToUpdate.age.toString();
      _phoneController.text = studentToUpdate.phone;
      ref.read(selectGenderProvider.notifier).setGender(studentToUpdate.gender);
    } else {
      _nameController.clear();
      _emailController.clear();
      _ageController.clear();
      _phoneController.clear();
    }
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            studentToUpdate == null ? "Input Student" : "Update Student",
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Name"),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "Enter name",
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text("Email"),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text("Gender"),
                  const SizedBox(height: 10),
                  Consumer(
                    builder: (context, ref, child) {
                      final gender = ref.watch(selectGenderProvider);
                      return DropdownButtonFormField<String>(
                        value: gender.isNotEmpty ? gender : null,
                        hint: const Text("Select gender"),
                        borderRadius: BorderRadius.circular(20),
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        items: const [
                          DropdownMenuItem(value: "Male", child: Text("Male")),
                          DropdownMenuItem(
                            value: "Female",
                            child: Text("Female"),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            ref
                                .read(selectGenderProvider.notifier)
                                .setGender(value);
                          }
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  const Text("Age"),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter your age",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text("Phone"),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter your phone",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel", style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                final controller = ref.read(studentProvider.notifier);
                final gender = ref.read(selectGenderProvider);
                final age = int.tryParse(_ageController.text) ?? 0;

                final student = StudentModel(
                  id: studentToUpdate?.id,
                  age: age,
                  name: _nameController.text,
                  gender: gender,
                  email: _emailController.text,
                  phone: _phoneController.text,
                );

                if (studentToUpdate == null) {
                  controller.insertStudent(student);
                } else {
                  controller.updateStudent(student);
                }
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final students = ref.watch(studentProvider);
    final controller = ref.read(studentProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text("Welcome Homepage")),
      body: students.when(
        data: (data) {
          if (data.isEmpty) return const Center(child: Text("No Data"));

          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Center(
                    child: Text(
                      "Student Count : ${controller.countStudent}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final student = data[index];
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Text(
                          student.id.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      title: Text(student.name),
                      subtitle: Text(student.email),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            onTap: () => Future.delayed(
                              Duration.zero,
                              () =>
                                  _showStudentDialog(studentToUpdate: student),
                            ),
                            child: const Text("Update"),
                          ),
                          PopupMenuItem(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return SimpleDialog(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsGeometry.all(29),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Delete Student",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              "Are you sure you want to delete this student",
                                            ),

                                            Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Cancel"),
                                                ),
                                                TextButton(
                                                  onPressed: () {
                                                    controller.deleteStudent(
                                                      student.id!,
                                                    );

                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("Yes"),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: const Text(
                              "Delete",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
        error: (error, stackTrace) => Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Something went wrong\n$error"),
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showStudentDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
