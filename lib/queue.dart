class Queue {                        // Class
  List<dynamic> items = [];         // Tempat menyimpan data antrian

  void enqueue(dynamic item) {      // Method enqueue untuk menambahkan data ke belakang antrian
    items.add(item);
  }

  dynamic dequeue() {               // Method dequeue untuk mengambil data dari depan antrian
    if (items.isEmpty) {
      return null;
    }

    return items.removeAt(0);
  }
}