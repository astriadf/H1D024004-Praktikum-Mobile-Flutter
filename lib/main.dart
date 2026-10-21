import 'queue.dart';                        // Menyambungkan class Queue dari file queue.dart

void main() {
  Queue queue = Queue();

  // Menambahkan data ke Queue
  print("Menambahkan data ke Queue:");

  queue.enqueue("A");
  queue.enqueue("B");
  queue.enqueue("C");

  print(queue.items);

  // Mengambil data dari Queue
  print("\nMengambil data dari Queue:");

  print("Data yang diambil: ${queue.dequeue()}");
  print("Data yang diambil: ${queue.dequeue()}");

  // Menampilkan isi Queue setelah dequeue
  print("\nIsi Queue setelah dequeue:");
  print(queue.items);

  // Menambahkan data baru
  print("\nMenambahkan data baru ke Queue:");

  queue.enqueue("D");
  queue.enqueue("E");

  print(queue.items);

  // Mengambil satu data lagi
  print("\nMengambil data dari Queue:");
  print("Data yang diambil: ${queue.dequeue()}");

  // Menampilkan isi Queue terakhir
  print("\nIsi Queue terakhir:");
  print(queue.items);
}