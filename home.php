<?php 
  require('config/db.php');
  session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Toko Online Pointer</title>
  
  <link rel="stylesheet" type="text/css" href="plugin/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="asset/css/main.css">
  <link rel="icon" type="image/gif/png" href="asset/img/Title.png">
</head>
<body>

<?php include('component/nav.php'); ?>
<div class="container-fluid" id="isi" >
  

  <div class="row">
    <div class="col-xs-2 col-xs-offset-5" id="produk-laris">
      <h3 style="font-family: Blacksword; font-size:2.2em;"><strong>Catalog</strong></h3>
    </div>
  </div>

  <div class="row">
  <?php  require("config/db.php");
					// konfigurasi pagination
					$dataperhalaman = 4;
					$halaman = isset($_GET['p'])?(int)$_GET['p'] : 1;
					$halaman_awal = ($halaman > 1) ? ($halaman * $dataperhalaman) - $dataperhalaman : 0;

					$next = $halaman + 1;
					$previous = $halaman - 1;

					

					$kategori = '';
					if (isset($_GET['kategori'])) {
						$kategori = $_GET['kategori'];
					}					
					$no = 1;
					if (!empty($kategori)) {
                        $produk = mysqli_query($conn, "SELECT * FROM tabel_produk WHERE kategori= '$kategori'");
					$jumlah_data = mysqli_num_rows($produk);
					$total_halaman = ceil($jumlah_data / $dataperhalaman);
					$nomor = $halaman_awal + 1;
						$tampil = mysqli_query($conn, "SELECT * FROM tabel_produk WHERE kategori= '$kategori' LIMIT $halaman_awal, $dataperhalaman");
					}else{
                        $produk = mysqli_query($conn, "SELECT * FROM tabel_produk WHERE kategori= '$kategori'");
                        $jumlah_data = mysqli_num_rows($produk);
                        $total_halaman = ceil($jumlah_data / $dataperhalaman);
                        $nomor = $halaman_awal + 1;
						$tampil = mysqli_query($conn, "SELECT * FROM tabel_produk LIMIT $halaman_awal, $dataperhalaman");
					}
					
					while ($data = mysqli_fetch_array($tampil)) {
					 ?>
    <div class="col-md-3">
    <div class="card" style="width: 18rem;">
  <img class="card-img-top img-thumbnail" src="admin/proses/<?= $data['path']?>" alt="<?= $data['nama']?>">
  <div class="card-body">
    <h5 class="card-title"><?= $data['nama']?></h5>
    <p class="card-text"><?= $data['keterangan']?></p>
    <p class="card-text">Rp.<?= $data['harga']?></p>
    <p class="card-text">Ukuran : <?= $data['ukuran']?></p>
    <p class="card-text">Stock : <?= $data['stock']?></p>
   
    <?php  if(isset($_SESSION['idUser'])){
                if($data['stock'] > 0){ ?>
                
                  <a href="proses/beli.php?idProduk=<?= $data['idProduk']?>&idUser=<?= $iduser ?>"><button type="button" class="btn btn-info">Masukkan Keranjang</button></a>
    
                <?php } else{ ?>
                  <button type="button" class="btn btn-info disabled">Masukkan Keranjang</button>
                <?php } ?>
              <?php }else{ ?>
                
                  <button type="button" class="btn btn-info disabled">Masukkan Keranjang</button>
               <?php } ?>
  </div>
</div>
    </div>
    <?php } ?>
  </div>
  


  <!-- Laman Produk-->
  
  
              <nav aria-label="...">
				<ul class="pagination justify-content-center">
					<li class="page-item">
						<a class="page-link" <?php if ($halaman > 1) { echo "href='?kategori=$kategori&p=$previous'";} ?>>Previous</a>
					</li>
					<?php for ($i=1; $i <= $total_halaman ; $i++) { ?>
					<li class="page-item <?php if ($_GET['p']==$i) { echo 'active';} ?>"><a class="page-link" href="?kategori=<?= $_GET['kategori']?>&p=<?= $i ?>"><?= $i ?></a></li>
				<?php } ?>

					<!-- <li class="page-item active" aria-current="page">
						<a class="page-link" href="#">2</a>
					</li> -->
					<li class="page-item">
						<a class="page-link" <?php if ($halaman < $total_halaman) { echo "href='?kategori=$kategori&p=$next'";} ?>>Next</a>
					</li>
				</ul>
			</nav>
<?php include('component/footer.php'); ?>


<script type="text/javascript" src="plugin/Javascript/jquery.min.js"></script>
<script type="text/javascript" src="plugin/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="asset/js/script.js"></script>
</body>
</html>