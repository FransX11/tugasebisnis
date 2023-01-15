<?php 
  $conn = mysqli_connect('localhost', 'root', '', 'ebisnis');

  $idtransaksi = $_POST['idtransaksi'];
  $iduser = $_POST['iduser'];
  $daftarbarang = $_POST['daftarbarang'];
  $tanggal = $_POST['tanggal'];
  $total = $_POST['total'];
  $query = mysqli_query($conn, " INSERT INTO tabel_transaksi (idTransaksi, idUser, daftarBarang, tanggal, total) VALUES ('$idtransaksi', '$iduser', 'daftarbarang', date, total)");
  
  if($query){
    echo '
      <script>
        alert("transaksi berhasil ditambahkan");
        window.location = "../admin.php"
      </script>
    ';
  }else{
    echo '
      <script>
        alert("Terjadi Kesalahan, silahkan ulangi.");
        window.location = "../admin.php"
      </script>
    ';
  }
 ?>