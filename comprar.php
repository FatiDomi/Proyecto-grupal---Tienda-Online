<?php
// el rquire_once se utiliza para incluir el archivo navbar.php que contiene la barra de navegación
require_once 'navbar.php';
// si no hay una sesión iniciada, se redirige a la página de inicio, si no, se muestra el carrito con los productos que el usuario ha añadido 
if (!isset($_SESSION['email'])) {
} else {

    $id_usuario = $_SESSION['id'];
    $query_carrito = "SELECT carrito.*, producto.*, fotos.foto 
FROM carrito 
INNER JOIN producto ON carrito.id_producto = producto.id 
INNER JOIN fotos ON producto.id = fotos.id_producto 
WHERE carrito.id_usuario = $id_usuario AND carrito.en_carrito = 1
GROUP BY producto.id";
}

$result = mysqli_query($conexion, $query_carrito);

?>
<style>
    @media screen and (max-width: 600px) {
        .cesta {
            margin-top: 20% !important;
        }

        .desc {
            margin-top: 0% !important;
            margin-bottom: 10% !important;
        }

        .desc2 {
            margin-top: 4% !important;


        }

        .resumen {
            margin-top: 15% !important;
        }

        .comprar {
            width: 100% !important;
        }
    }
</style>
<div class="container-fluid">
    <div class="row mx-5" style="margin-top: 7%;">

        <div class=" col-md-5 col-sm-12">
            <h2 class="cesta">Cesta</h2>
            <?php
            // mientras haya productos en el carrito, se muestran en tarjetas con su información y foto, y se calcula el total
            $total = 0;
            while ($row = mysqli_fetch_assoc($result)) :
                $foto = $row['foto'];
                $foto = base64_encode($foto);

                $total += $row['precio_ud'] * $row['cantidad'];

            ?>
                <div class=" row ">
                    <div class="col-md-6 col-sm-12">
                        <img src="data:image/jpeg;base64,<?php echo $foto ?>" class="img-fluid">
                    </div>
                    <div class="col-md-6 col-sm-12 desc2 ">
                        <h3>
                            <?php echo $row['nombre'] ?>
                        </h3>
                        <p style="margin: 0px !important;">Talla
                            <?php echo $row['talla'] ?>
                        </p>
                        <p>Cantidad
                            <?php echo $row['cantidad'] ?>
                        </p>

                        <div class="d-flex align-items-center desc justify-content-between" style="margin-top: 45%">
                            <!-- se crea un formulario para quitar el producto del carrito si pulsas la papelera -->
                            <form action="carrito2.php" method="POST">
                                <input value="<?php echo $row['id'] ?>" name="producto_carrito" hidden>
                                <button class="btn " type="submmit" style="padding: 0px !important; ">
                                    <img src="./assets/images/pagina_producto/basura.png" alt="">
                                </button>
                            </form>
                            <p class="fs-4" style="margin: 0px !important;">
                                <?php echo ($row['precio_ud'] * $row['cantidad']) ?> €
                            </p>
                        </div>
                    </div>
                </div>
                <hr class=" w-100" style="margin-top: 5%;">
            <?php endwhile; ?>

        </div>
        <div class="col-md-4 col-sm-1"></div>
        <div class="col-md-3 col-sm-12">
            <div class="rounded text-white p-3 resumen" style="background-color: #9eaab2;">
                <h2>Resumen</h2>
                <p></p>

                <hr class=" w-100" style="margin-top: 5%;">
                <div class="d-flex justify-content-between fs-4">
                    <p>Total</p>
                    <p>
                        <?php echo $total ?> €
                    </p>
                </div>
                <div class="d-flex justify-content-center mt-3">
                    <div class=" btn d-flex fs-4 justify-content-center aling-items-center comprar" style="background-color: #847C7C; width: 40% "><a class="text-white" href="proceso_compra.php">COMPRAR</a>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="row mx-5" style="margin-top: 20vh">
        <h2 class="">También te podría interesar</h2>
    </div>
    <!-- se incluye el archivo novedades.php que contiene los productos que se muestran en la página de inicio -->
    <?php require_once 'novedades.php'; ?>
</div>

<?php require_once 'footer.php';
?>