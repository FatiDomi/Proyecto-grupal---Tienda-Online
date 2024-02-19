CREATE DATABASE  IF NOT EXISTS `tiendaropa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `tiendaropa`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tiendaropa
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `id_producto` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (2,1,1,2),(3,1,1,3);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compran`
--

DROP TABLE IF EXISTS `compran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compran` (
  `id_usuario` int(11) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compran`
--

LOCK TABLES `compran` WRITE;
/*!40000 ALTER TABLE `compran` DISABLE KEYS */;
/*!40000 ALTER TABLE `compran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios`
--

DROP TABLE IF EXISTS `envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_estimada` date DEFAULT NULL,
  `comentarios` mediumtext DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios`
--

LOCK TABLES `envios` WRITE;
/*!40000 ALTER TABLE `envios` DISABLE KEYS */;
/*!40000 ALTER TABLE `envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emisor` varchar(20) DEFAULT NULL,
  `receptor` varchar(20) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `importe` double DEFAULT NULL,
  `iva` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favoritos` (
  `id_usuario` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritos`
--

LOCK TABLES `favoritos` WRITE;
/*!40000 ALTER TABLE `favoritos` DISABLE KEYS */;
/*!40000 ALTER TABLE `favoritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) DEFAULT NULL,
  `foto` mediumblob DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (8,1,_binary '\0\0\0 ftypavif\0\0\0\0avifmif1miafMA1B\0\0\0�meta\0\0\0\0\0\0\0(hdlr\0\0\0\0\0\0\0\0pict\0\0\0\0\0\0\0\0\0\0\0\0libavif\0\0\0\0pitm\0\0\0\0\0\0\0\0iloc\0\0\0\0D\0\0\0\0\0\0\0\0\Z\0\0\�\0\0\0(iinf\0\0\0\0\0\0\0\0\Zinfe\0\0\0\0\0\0av01Color\0\0\0\0jiprp\0\0\0Kipco\0\0\0ispe\0\0\0\0\0\0X\0\0X\0\0\0pixi\0\0\0\0\0\0\0av1C�\0\0\0\0colrnclx\0\0\0�\0\0\0ipma\0\0\0\0\0\0\0\0�\0\0\�mdat\0\n\n&ey]�2\�;�\�q �a���\�u(���q�\n\�\0]&���T\�\�I�˺��\�P\�h��\�\�\�g\�ն\�\�:�\�\�\�36b\�TYCK\0\�Px\�f�|#\��\�+����\�\�r\�o$Q\��_	g~Թ�M�\�ܹ]h\�<�\�@Ɠ\�i�\\RM\� �I\�P\Z��,M���F���<�(�2	m\�7�\'02Cc\�d\�\�kp|{�.�A*��\�i,\�\n�Qe�%�\�\�8�\�\�0�\���db2��MpOi�hS��Nea���6�\�1\�a\�!\�ג[Ì����l�\�ʽ׺\n\�f�\"\�-BỲPxś\�\��\�{\�np\�	\ZJ<\�B0@�݊i�G��>Ҡ)9#�\���\�U\�}\�\�\�D���d�\�}�%b&Hu�\��E �\�MU\"�\�\�^Q޶�~�B2\�} VC�\00�\�\�W}\��qJ;3!X�U\�χ���0��Ŭ�y\�\�\�%}\�n��\�\�\�:\�_�t$\�\�e�V<��_q�սġ�\�\�xu�\�x���|�\��^\�H�@\�[\�\�P/� %)�Q>\�6H�iE�\�!�\��6�\�\0T��0\�\�\�\�\�ֺhÏ4�d���G/�\Z�.j\�\�W\�)GV�\�*\�d&�W\�ͷtEf �\��Ԃ\��Y�h}�wH\�\� \�c�y\��\�Fa�u\�!J\�ވ<�\'�w���\�s��,\�\"���\�*�\r/�2\�8��H\�\�\�\��{\�b��&&�\�2�x�\�4\��LT\�T�,vh�8�Y\�\�H<\�;�N�\�\�\�u�9���	!\�=\�!���ESub��~x�m��\�m7��X�-*\�\�\��Rx�(\�9Sv�\�!�8�\�n\�#Bݠ�j�\�\�X��K�?P��vNX,h�LՃ�k�\�&K��\�\�H�1\����\�k;\��q\�vz��\�h ��&�ڟ\������2ܛwҊ�Yd�,ڳ:S-w\�[�tk\�\�*\�su��e@���>��\�7\�C)H����ؚWꛪ��>��\�\�/7�-rF\�}{Q�n%/��\0\"6>\�S��\�n\�4�����\Z-�{�\"k��]FQ�<\�.����8<�ݘ�z*SLGO{��E+\�8�]\�L;\�8�\�-A�a\0Ѫ�	Ek\�oZͲ���;u\�Ve��m-��m]\�K-qn�\�Gv]_\�\�a\�\�n�#?��\�\�I��\'�U\n���\�?�h\�1$\�N\���o���\�\��\�d�\�t賰�>\�\�\��d9I��\�K�7\�\�\�h\�/)\��b\�K`Cm\�c8e:u�\r��w,(f��j\'�/\����c��\�ڥ�dx\�nBb7C�g���X\n0�㾬\�\�ݵ\�\�V�\�X]PZ��\�\�/�52\�\'\��g3�^;\�%�\�\�Bn�\�\�X�\�\�\�\��\�\�}ug\�6���G�*\�W��:�z	\��Q\0\0�\Z�*\���\��O\�I��O\n\�{р.+a�\�Hvr\�\�|=~�gـ+ߴ�\�mx~\nz�h\n��=�\�\�<CV��\�\�y\��J��09\�\�\\镒�%��S�iCB\�s6\�X\�\noҢ�vkI����:Rw\�:MHVc|�+k]�\�B	�Fd�{�<�we}z6*�3�\�	B¼;�f��\�P�\�$���\�߯QL\�R��ŋ�I9�\�bV��\�Ұ�\� u3jp\�	�/��mU�*��Fƅ¿o{\\�yVy\�\�a�K	\�\��W�:Lt5:%��\��q�@pƚ�$�oI\\�\�3��XW�<��\��\��[X|�r\��K�cum��.�;ƎP��\�\���I�=�I���[b{%y����w�K�\�\r\��强�74��<\�K\�\�$\�\�@�\\\�{�\0$HJfU\�\�CM\�\�`�$_ա���\Z*�+�Q%\�b\�M������dSՄ�m���\���n�?cE\'�	P�q<\"\�\�ӌڳ��J\�\�\�+V\���9�\�[_��.oa\�z��d��e8	�*M�x��2�Nr+�\�\n?�Bb!@�\"�x\�}�os�\�-�7O\\T<q{\\ވ\�W\�>@%\nl�|\�4��\�\�L\� 4(F�r\��\��`�F\��e�\�V\���T\�΁\�\"\��%TO䤋+�e<]\�\�,B�����Y�5|\��{�\�h��\�d�p\\\r\�	k�X��\�p~i\��D�x�\�x��/\��t�D�j\�\�3�c��YzI�B��\��}\�l~�\�k#\"�m����e��\�Q\��\�\�\�%\�~ۻ�E]e%��\�c�|C�RGS���K[\�\0;�c��\�>�\0V\n\���vGkm����\0�ëL\�Q\�\���W�?\�Y,��\'D\�\�V��WH4FJ�|�0�M��gl~O8\�s\ZF�\�\�ydX-��t�m\'N\�/\�\�t[�B�7�\��\�_\�R3\rA*H�sT�o\���]��S\�{���\�\�a]�\��\"����xn<\�q*M&���\�\�\'\�qN�\�\�\'P\�t�2k(\"!=:N�l�-#Q��4��/�\�/q*+ \�_�hn+[�\�	�P\�rw]�\�L\�@V\�\�\�ZL:F\�d�	�CM\�,i��\�������5�$*C(�&\�V\�P\�C8��PR��A�̣�\�,J\�\���[I\��>\�Q(	�*!&���U�͘Q\�?\�\�c\�\"!�ͭ���}�߹民\��\�M烓��@o��� @\�k���9�\�+��Nb\�IĐ�G{\�Y`$�݁aP]\�m�E&Z\��\�UG_j:�\�j�\�#C�%@\�����7�\�\r��u-~�\�sKP�t�q�w� J��\�z?G\�\��\'Z\"�\�\'<\n\�<���6����\�\"\'Z\���0��DV1�\0K\�\�ЮYC\\�f\�k2\'���5.\\�\�MI\�\�\�AI��B\�\��\�D79�I@�6n����Y5�\�\�N�\��(\�RG��UiYQ\\@d ��߾�|�\�	�>I��\�9\�D�\�\�\�\�Y!Udr7�dePV%{%\�A]�g������1��ƁT\��ʄ���I\rG\�4\nK��\�Dȅ��Y�\n�\�\�\�M����R�	�L\�\\$iv��T\'��\�\��a�,8�\rߩ\�x�k!	+�;Ď���ѿ۠\�k\� \�`wy�@��\�K���\�ty��r\"�5]�\�\�\�\����\�\�{\�G�\�F\�\�Q\�9mL���2 �%�&�\��\�I��C\�$Ch\���f��\�Fa~\�9\�\�\0o��\����K\�΃\�H]\�\'�L(\�&��z0\�C$�6�߬�\�(\�r��\�\�\�?j}��C9S}t��m\�.ǔ>\�e�֔J�\�&�\�\�ھ\�\�5Å�o\�^\�\��L\�y��\�|H-:2G)eW��#H�d\�\��Ej�?7Wi�\�ѓ�\�g�\�\�E�\�\�B��\"w;\�k8[����\�q\�Y\�\Z\�W�G��ϑ�1��\�Jⶖ��U\�T�C\�a)��i�D���Ù\�3yr*� \�(Z8�@י[�dVkr��\�\�2\�}\�YJ[9\"��MW1\n\�>�\�VYm{ڈ��H��\�\�0\�g�\�\�\�n8 XK��H\�Q�\�V\�4��X�\��[\�A(�\�Ӣ�\�Pw)!ǉND�0�ۣ��g\�\��H�_��\�x�\�3w}\'T\�\�q�~ۍn�6@p\�\�!�?)^L�d\�$R[\�6xʑ\�h\\z�W�\��		S�s�����_Wks��u�3\�p�\rA<�B�K���B=Z3\"�c9�\�ą�׉�5�\�z����\�Q\�V\�)bf\���v�i�\'��pm\'�T�\\\�D#��Lj\�ꤥ4]6\�kQٷ*Uc5p�\�g�h$e\�9\�R\�(1�6[�1ϴ0�K�[\r��NM\�w,\�2+���\�N� �Z\�\�P;�Kn\�MD_\Z�q�Pї�E��\�\�^��NW�����\�ӣ�[m��wk�C�\�(\�\\@�O�\�WuK9c\�\�U\�ay/\�\�\"���\�Q|Tp���\0�>W\��_ʴ�BW*K�t\�r\��\�\�X\�Lx\�@+rd�R����{�|oH<�Oh��T�\�Q-Rm\�ڏ,��l<�>��\��h���\�9�\�:�M��jRi\�S8:�R\�z�YB\��\�m\r�,c��x\�t?-e0߿���� ��\�\�:d\���բ\�B\��>\�K\�H6=�\�xk��2C��JG��;d�����R;.�&����4�0l�:�\�\���M[m\���W��^�}���d��+\��$\�b�Cqɼ�9;�H#\�\�ɬmh\��D-/\Z1\�m��Q�OC��I��a�/��U�\�\�\�p�wR�0]�\�Dx�\n^^�!�f�\�pN�U�6mt̙�O~U|+a\�4��u\�\��I\�\n\�\����#�#IN�\r\�іD�-�x\Z���\�ɪRk3Z��uJ�j\�w�\�\�\�\�\�*\�ޒ�u��\�\�Ձ�\� \�\\\�vܺ\'O<\�\�A֔E5�mis{�KYX_�V��\�\�\�\�\�y�GA\���g0-�\'\�\�\�O:�\�����1�6(\�fQ\'u\�s \r%۴����\��<=��\nm\�S��X�Y��V\01�Nr����+�����y�\�JcL\�x|�\�\���8��\�s)�������\�f\�8�[�����D���*E�\�M\�Op��\'8\�5U�ɖ4k@\� 𜑰	��	m�\�\\YZ?A�\'\�;`2�\�=ά�ꯁ\�Z{e���) \�K�\Z3GwüSI��flDQ�	?H��d->@\�O�{xmRfN��Q/�\r�k<H􆶙S\�\�\�\\7h<�٫f\�\�i\�\�,\��O�֤���/q\�1\��-���\\3�\\@h\�R�bO\�E�d:-o1�\�\\yƧ1�2\�z�]�G\�\�,]#iO��jN/��x+*�4{\"���]t�Ο\�	��,-�\�D�b���ur\�\�k\�V\��\�Thk/\�U�\�=8=lbt}\�J�D�O�\��|��\\0E�Yҕ��]=����ގ[\�\�\�p\�͆\�LLY��I�_cN\�\n<l0ex���\\rĚ*N\�P���y#��\�ML?\�\���y�ś)qlX+~+\0��,��]]v\� ��\�v	�K|.X\��\�gl\�+\�XPNV16P��ohTk\�H��6S��}5�\�h��\�\�\r�\�&��?�\�\�nN\�\n\�6�\�-���\�z\�K|w^tX�\�+\�>��?k��\�\�s\�\�Y�\�\Z�\��5���z�;6k���[֟U�\�\�:\�[[�u������G�wZ�ʷ[\�V��\�;?��s䇫�\� �bo�x�G�\����&��a嵼\�\�\�M\�GY�j=�1\�<@�@E�B/@\�(\�$+Vx1\�\��Xٺ�\�n(L�U\�\��v-!�3 $\��l�[H䗺�\�s�%^\0\�|\�h�b�c\�\��\"&\�\�I>*U\�\�\\�2�\�\��\0>`\Zk�G�:�GP�Ⱥ1���\�bl\�ek\�\�f�\�\n\�T\��L��\\��ȑ=\�8F\Z�����i\�`\�,�2\�ϟU\�\���\�|\��j�/��i#b�\�z\�\�P��\rBu��j\�Q�t7\�\�ֺ#�]SE��%\"\�vv�ܛs\�\�E\�?\\E\"%��\Z�z_�\�F|�I�Hms�p�I��?�\�ُ�\�f\'��BWO\�cy�-\�w]�ip\�VD\�\��3��6D��Zq\�\Z\�(X���>[1\�P�&ol���bw`v�c.obv\�\Z��\�����>�/����8˖�_�;\0\r���H��\Z�r��\�cbУ�dB)�Q	!\�Մ{>�\�DI܏\�R:ۂ%\�\\��<s\�W�\�#�\�\�i|\�\�$\�\r�J��<\�\��T\����ϔt�\�L�aR,�ʟ\�2b�������\�|�-w�|d\'+l�\'\�L�+mw�45\0#\�լ��\�|n*\0nL�+}<5�`̻\�\�\�\�\n-��\�ZqtP+\��\��4D\��ļڬ��r^\"U=ؔv��	M�c��\�\'\�\���4^\�\���Z\�\���0~�\�V)\�l:\�x\�\�m\�\'\�\�&eA/\�J\"�y\�_�ws\�l��.�JN85\�}�\�}y&�\�\"�H\�\�ê�\�e�	J�\�\�\Z��F,�n-\��\'1\���\�`fP�w_>h�\�\�<�r{(+�`��@\�\�sCչ)��R\�\��Ђhإ�>@�\��\�\�B$J\\\�gJ\\4\"5\�)p�\�hE\�\�\�[��\"\�Њ̱鲶\�7]\�\r#v�:O�@C�y�&k{\���in\��p�Y\�	\0�\�}�\�C��\�.Zdk\��W�a�\�f\�0^V�\���\�3�2P\�XV�̜����\�/��\�\\�8�]<�`�dڳ\�\��\"ä��?+\�\�DF\'Pu�\0ȯ�!\r\�T�TX�\�~���X��\�XqQG\�@A	̗S&��M�\�Vm\�Ԥz\�>	�\�f�w����2\�\�\"\�q\��ݻ\�^\�\�y�}6�r�0-`H\�\�6KR�t�!\�v\�X��I��%�\�1\�\r��\�*\�&�\�䴌�\�&\�o2�=��\�3�\�\�Nk����\�ߙ-����Q\�M~Ww^m\��o�-�\�\�fF_5��y\�ϗ���9�\�@�X�E\�f��?j\"P\�\���!\�\�j\�\�TU�\�y�x�&Y\�<\'��(On�\�G�L�{ʟ-|W�\"��<�s�\�gfds�\�p2��:-\��_A+e�\\7�F-a�\'\�$����\";_\r�\�D��\��G�N�y�\n\��!�\�V�\�J��s�\�T1�\��\0׽F�C\��\��:f)�qd籄�0\�\�?9��E�  \�o\�\��+\�\���\�P\�,v@� ��(t�r�o\"�s�����\n�\�\�~�3\�f��a<W\�\����c\�as�\�:�Kl��RoX~��jΐ\�j�,�W4\'NJ$�z��w\�Bݝ�\�B�~D{+�5��\��\�s\�hEԷs\�Y��Z`\�qrԷ�\rXW�y`\�H;k\��׼CxϜ\��2\�3����j\���\�\\,C�\�g\�\���Ef�k߭�P�^\�u\�b�\Z��\�O\�\�<X\�ܳ(��\'S����\�G{\�57�|�W���^�\�ޮ�\�߮\���pKM\r�\��\��\�̃D\�C�b*ގF[�\�SĂǏ;&��2H��\�����f��ZP��\�\�\���b��\�Zfwd?b�ѶĢǌ{\��l#\�D\�\�`�j�\�\�n\�:�p0\�\n\��AH\�\�%�c{�\�=���bq�\'�F��<0J�+�HW`\�\�{\�\�\�\�\0ʀ�\�\'\�\�_Y\��p�D	_�o\"��z,n(\�0�4R�\��\�KxP�\�T�\�\��\�o梤\�\�\�>�r6kwy�,D\���\��q�1\�TV��Z�\�o䉻�\�\�á:��x�	\�\�恕%��U|j�н�q@K/\�\�W1t\\�<\�6�_v\"~�~I\��2\�a\�@\'��CI��\�r/��\\4i�\�1�صQ�=\�V��<��q���d��#ގr\���\�5o\���i�9\�g�]\�a�\�ۈA䢕�\r\�E5\n\�{`��\�u\������\�%�\�\Zt�#�G����acj>��2:�#\�Gf\\�����ˇ�82�\�N\nAYz��y{�ϑT��3SzR���9�\�e>}\�z&�Y�2/�\�\����!�v����@\��N��b9��#>o}\���\�\�@��E@*\rʾ�\�UxΖL7���.n�	\�\��\�bAHT�s jϧ^�v�\�E\'7�g\�l?k��E\0��݀0f�\�Y�<S��\�{E�B9��6k2<\�[��\�m\�\��\�|\�I��\�n����MX�!�Y9obƈ�o�U��R\�ukvdj�$�zb\�B�\�j\Z�*\�\��$\��lKz\\#\Z��:C�c�4E��@ԅ\�\�H\�˟Jp3��\�M\��h݆	�j~UNY\���:\�\��y\��\��\��=\�2_�Wӆ\�wd[v$\�h�\�\�s��\��\�\0�A���uZ�@@\�a�\�K�mky\��|&8�\Zg}��C�\�Y\�҅{\�̨;�N!�Q:�,�\�ޅ|\�A���\�\�EuP��B��\n)Gm�\0(��\�[\�\��8\�Q�.��m8k3���\�0iGF�\��p�\�\�3A��*B\�>A|6�QE\�ד\�$�1�-�\�=�}\�SCg���\�*�\�pmJ[�l\��\�y\���6��N~F�ƯH���<*��Rtxz���Q\�Yq\��0�\�w*\�,�b~o�\�~M�q�.�y֟\�z��W	�C\�\�C~d�˛�\�\�.��m|\�U\�u�`��w�\�&ͫo����A\�[[hC�8~�p=\�\�_\��\�\��\�+jۀ\�\�U\��\�,h�$N�\�\�\"a�MWir�Rȅ0\\\r-��U`�;\�s��\�/��\�M\�獍�\�\��!o8=�^��U\��xwޗ�\�\�Je�~\�\�\�E6\�w��s\�TY\�u�hH�\�F��\�\�\�K.�b־\�;��\0���6\�޿�&Ai�\�v\�.�W7$�'),(9,2,_binary '\0\0\0 ftypavif\0\0\0\0avifmif1miafMA1B\0\0\0�meta\0\0\0\0\0\0\0(hdlr\0\0\0\0\0\0\0\0pict\0\0\0\0\0\0\0\0\0\0\0\0libavif\0\0\0\0pitm\0\0\0\0\0\0\0\0iloc\0\0\0\0D\0\0\0\0\0\0\0\0\Z\0\0\�\0\0\0(iinf\0\0\0\0\0\0\0\0\Zinfe\0\0\0\0\0\0av01Color\0\0\0\0jiprp\0\0\0Kipco\0\0\0ispe\0\0\0\0\0\0X\0\0X\0\0\0pixi\0\0\0\0\0\0\0av1C�\0\0\0\0colrnclx\0\0\0�\0\0\0ipma\0\0\0\0\0\0\0\0�\0\0\�mdat\0\n\n&ey]�2\�;�\�q �a���\�u(���q�\n\�\0]&���T\�\�I�˺��\�P\�h��\�\�\�g\�ն\�\�:�\�\�\�36b\�TYCK\0\�Px\�f�|#\��\�+����\�\�r\�o$Q\��_	g~Թ�M�\�ܹ]h\�<�\�@Ɠ\�i�\\RM\� �I\�P\Z��,M���F���<�(�2	m\�7�\'02Cc\�d\�\�kp|{�.�A*��\�i,\�\n�Qe�%�\�\�8�\�\�0�\���db2��MpOi�hS��Nea���6�\�1\�a\�!\�ג[Ì����l�\�ʽ׺\n\�f�\"\�-BỲPxś\�\��\�{\�np\�	\ZJ<\�B0@�݊i�G��>Ҡ)9#�\���\�U\�}\�\�\�D���d�\�}�%b&Hu�\��E �\�MU\"�\�\�^Q޶�~�B2\�} VC�\00�\�\�W}\��qJ;3!X�U\�χ���0��Ŭ�y\�\�\�%}\�n��\�\�\�:\�_�t$\�\�e�V<��_q�սġ�\�\�xu�\�x���|�\��^\�H�@\�[\�\�P/� %)�Q>\�6H�iE�\�!�\��6�\�\0T��0\�\�\�\�\�ֺhÏ4�d���G/�\Z�.j\�\�W\�)GV�\�*\�d&�W\�ͷtEf �\��Ԃ\��Y�h}�wH\�\� \�c�y\��\�Fa�u\�!J\�ވ<�\'�w���\�s��,\�\"���\�*�\r/�2\�8��H\�\�\�\��{\�b��&&�\�2�x�\�4\��LT\�T�,vh�8�Y\�\�H<\�;�N�\�\�\�u�9���	!\�=\�!���ESub��~x�m��\�m7��X�-*\�\�\��Rx�(\�9Sv�\�!�8�\�n\�#Bݠ�j�\�\�X��K�?P��vNX,h�LՃ�k�\�&K��\�\�H�1\����\�k;\��q\�vz��\�h ��&�ڟ\������2ܛwҊ�Yd�,ڳ:S-w\�[�tk\�\�*\�su��e@���>��\�7\�C)H����ؚWꛪ��>��\�\�/7�-rF\�}{Q�n%/��\0\"6>\�S��\�n\�4�����\Z-�{�\"k��]FQ�<\�.����8<�ݘ�z*SLGO{��E+\�8�]\�L;\�8�\�-A�a\0Ѫ�	Ek\�oZͲ���;u\�Ve��m-��m]\�K-qn�\�Gv]_\�\�a\�\�n�#?��\�\�I��\'�U\n���\�?�h\�1$\�N\���o���\�\��\�d�\�t賰�>\�\�\��d9I��\�K�7\�\�\�h\�/)\��b\�K`Cm\�c8e:u�\r��w,(f��j\'�/\����c��\�ڥ�dx\�nBb7C�g���X\n0�㾬\�\�ݵ\�\�V�\�X]PZ��\�\�/�52\�\'\��g3�^;\�%�\�\�Bn�\�\�X�\�\�\�\��\�\�}ug\�6���G�*\�W��:�z	\��Q\0\0�\Z�*\���\��O\�I��O\n\�{р.+a�\�Hvr\�\�|=~�gـ+ߴ�\�mx~\nz�h\n��=�\�\�<CV��\�\�y\��J��09\�\�\\镒�%��S�iCB\�s6\�X\�\noҢ�vkI����:Rw\�:MHVc|�+k]�\�B	�Fd�{�<�we}z6*�3�\�	B¼;�f��\�P�\�$���\�߯QL\�R��ŋ�I9�\�bV��\�Ұ�\� u3jp\�	�/��mU�*��Fƅ¿o{\\�yVy\�\�a�K	\�\��W�:Lt5:%��\��q�@pƚ�$�oI\\�\�3��XW�<��\��\��[X|�r\��K�cum��.�;ƎP��\�\���I�=�I���[b{%y����w�K�\�\r\��强�74��<\�K\�\�$\�\�@�\\\�{�\0$HJfU\�\�CM\�\�`�$_ա���\Z*�+�Q%\�b\�M������dSՄ�m���\���n�?cE\'�	P�q<\"\�\�ӌڳ��J\�\�\�+V\���9�\�[_��.oa\�z��d��e8	�*M�x��2�Nr+�\�\n?�Bb!@�\"�x\�}�os�\�-�7O\\T<q{\\ވ\�W\�>@%\nl�|\�4��\�\�L\� 4(F�r\��\��`�F\��e�\�V\���T\�΁\�\"\��%TO䤋+�e<]\�\�,B�����Y�5|\��{�\�h��\�d�p\\\r\�	k�X��\�p~i\��D�x�\�x��/\��t�D�j\�\�3�c��YzI�B��\��}\�l~�\�k#\"�m����e��\�Q\��\�\�\�%\�~ۻ�E]e%��\�c�|C�RGS���K[\�\0;�c��\�>�\0V\n\���vGkm����\0�ëL\�Q\�\���W�?\�Y,��\'D\�\�V��WH4FJ�|�0�M��gl~O8\�s\ZF�\�\�ydX-��t�m\'N\�/\�\�t[�B�7�\��\�_\�R3\rA*H�sT�o\���]��S\�{���\�\�a]�\��\"����xn<\�q*M&���\�\�\'\�qN�\�\�\'P\�t�2k(\"!=:N�l�-#Q��4��/�\�/q*+ \�_�hn+[�\�	�P\�rw]�\�L\�@V\�\�\�ZL:F\�d�	�CM\�,i��\�������5�$*C(�&\�V\�P\�C8��PR��A�̣�\�,J\�\���[I\��>\�Q(	�*!&���U�͘Q\�?\�\�c\�\"!�ͭ���}�߹民\��\�M烓��@o��� @\�k���9�\�+��Nb\�IĐ�G{\�Y`$�݁aP]\�m�E&Z\��\�UG_j:�\�j�\�#C�%@\�����7�\�\r��u-~�\�sKP�t�q�w� J��\�z?G\�\��\'Z\"�\�\'<\n\�<���6����\�\"\'Z\���0��DV1�\0K\�\�ЮYC\\�f\�k2\'���5.\\�\�MI\�\�\�AI��B\�\��\�D79�I@�6n����Y5�\�\�N�\��(\�RG��UiYQ\\@d ��߾�|�\�	�>I��\�9\�D�\�\�\�\�Y!Udr7�dePV%{%\�A]�g������1��ƁT\��ʄ���I\rG\�4\nK��\�Dȅ��Y�\n�\�\�\�M����R�	�L\�\\$iv��T\'��\�\��a�,8�\rߩ\�x�k!	+�;Ď���ѿ۠\�k\� \�`wy�@��\�K���\�ty��r\"�5]�\�\�\�\����\�\�{\�G�\�F\�\�Q\�9mL���2 �%�&�\��\�I��C\�$Ch\���f��\�Fa~\�9\�\�\0o��\����K\�΃\�H]\�\'�L(\�&��z0\�C$�6�߬�\�(\�r��\�\�\�?j}��C9S}t��m\�.ǔ>\�e�֔J�\�&�\�\�ھ\�\�5Å�o\�^\�\��L\�y��\�|H-:2G)eW��#H�d\�\��Ej�?7Wi�\�ѓ�\�g�\�\�E�\�\�B��\"w;\�k8[����\�q\�Y\�\Z\�W�G��ϑ�1��\�Jⶖ��U\�T�C\�a)��i�D���Ù\�3yr*� \�(Z8�@י[�dVkr��\�\�2\�}\�YJ[9\"��MW1\n\�>�\�VYm{ڈ��H��\�\�0\�g�\�\�\�n8 XK��H\�Q�\�V\�4��X�\��[\�A(�\�Ӣ�\�Pw)!ǉND�0�ۣ��g\�\��H�_��\�x�\�3w}\'T\�\�q�~ۍn�6@p\�\�!�?)^L�d\�$R[\�6xʑ\�h\\z�W�\��		S�s�����_Wks��u�3\�p�\rA<�B�K���B=Z3\"�c9�\�ą�׉�5�\�z����\�Q\�V\�)bf\���v�i�\'��pm\'�T�\\\�D#��Lj\�ꤥ4]6\�kQٷ*Uc5p�\�g�h$e\�9\�R\�(1�6[�1ϴ0�K�[\r��NM\�w,\�2+���\�N� �Z\�\�P;�Kn\�MD_\Z�q�Pї�E��\�\�^��NW�����\�ӣ�[m��wk�C�\�(\�\\@�O�\�WuK9c\�\�U\�ay/\�\�\"���\�Q|Tp���\0�>W\��_ʴ�BW*K�t\�r\��\�\�X\�Lx\�@+rd�R����{�|oH<�Oh��T�\�Q-Rm\�ڏ,��l<�>��\��h���\�9�\�:�M��jRi\�S8:�R\�z�YB\��\�m\r�,c��x\�t?-e0߿���� ��\�\�:d\���բ\�B\��>\�K\�H6=�\�xk��2C��JG��;d�����R;.�&����4�0l�:�\�\���M[m\���W��^�}���d��+\��$\�b�Cqɼ�9;�H#\�\�ɬmh\��D-/\Z1\�m��Q�OC��I��a�/��U�\�\�\�p�wR�0]�\�Dx�\n^^�!�f�\�pN�U�6mt̙�O~U|+a\�4��u\�\��I\�\n\�\����#�#IN�\r\�іD�-�x\Z���\�ɪRk3Z��uJ�j\�w�\�\�\�\�\�*\�ޒ�u��\�\�Ձ�\� \�\\\�vܺ\'O<\�\�A֔E5�mis{�KYX_�V��\�\�\�\�\�y�GA\���g0-�\'\�\�\�O:�\�����1�6(\�fQ\'u\�s \r%۴����\��<=��\nm\�S��X�Y��V\01�Nr����+�����y�\�JcL\�x|�\�\���8��\�s)�������\�f\�8�[�����D���*E�\�M\�Op��\'8\�5U�ɖ4k@\� 𜑰	��	m�\�\\YZ?A�\'\�;`2�\�=ά�ꯁ\�Z{e���) \�K�\Z3GwüSI��flDQ�	?H��d->@\�O�{xmRfN��Q/�\r�k<H􆶙S\�\�\�\\7h<�٫f\�\�i\�\�,\��O�֤���/q\�1\��-���\\3�\\@h\�R�bO\�E�d:-o1�\�\\yƧ1�2\�z�]�G\�\�,]#iO��jN/��x+*�4{\"���]t�Ο\�	��,-�\�D�b���ur\�\�k\�V\��\�Thk/\�U�\�=8=lbt}\�J�D�O�\��|��\\0E�Yҕ��]=����ގ[\�\�\�p\�͆\�LLY��I�_cN\�\n<l0ex���\\rĚ*N\�P���y#��\�ML?\�\���y�ś)qlX+~+\0��,��]]v\� ��\�v	�K|.X\��\�gl\�+\�XPNV16P��ohTk\�H��6S��}5�\�h��\�\�\r�\�&��?�\�\�nN\�\n\�6�\�-���\�z\�K|w^tX�\�+\�>��?k��\�\�s\�\�Y�\�\Z�\��5���z�;6k���[֟U�\�\�:\�[[�u������G�wZ�ʷ[\�V��\�;?��s䇫�\� �bo�x�G�\����&��a嵼\�\�\�M\�GY�j=�1\�<@�@E�B/@\�(\�$+Vx1\�\��Xٺ�\�n(L�U\�\��v-!�3 $\��l�[H䗺�\�s�%^\0\�|\�h�b�c\�\��\"&\�\�I>*U\�\�\\�2�\�\��\0>`\Zk�G�:�GP�Ⱥ1���\�bl\�ek\�\�f�\�\n\�T\��L��\\��ȑ=\�8F\Z�����i\�`\�,�2\�ϟU\�\���\�|\��j�/��i#b�\�z\�\�P��\rBu��j\�Q�t7\�\�ֺ#�]SE��%\"\�vv�ܛs\�\�E\�?\\E\"%��\Z�z_�\�F|�I�Hms�p�I��?�\�ُ�\�f\'��BWO\�cy�-\�w]�ip\�VD\�\��3��6D��Zq\�\Z\�(X���>[1\�P�&ol���bw`v�c.obv\�\Z��\�����>�/����8˖�_�;\0\r���H��\Z�r��\�cbУ�dB)�Q	!\�Մ{>�\�DI܏\�R:ۂ%\�\\��<s\�W�\�#�\�\�i|\�\�$\�\r�J��<\�\��T\����ϔt�\�L�aR,�ʟ\�2b�������\�|�-w�|d\'+l�\'\�L�+mw�45\0#\�լ��\�|n*\0nL�+}<5�`̻\�\�\�\�\n-��\�ZqtP+\��\��4D\��ļڬ��r^\"U=ؔv��	M�c��\�\'\�\���4^\�\���Z\�\���0~�\�V)\�l:\�x\�\�m\�\'\�\�&eA/\�J\"�y\�_�ws\�l��.�JN85\�}�\�}y&�\�\"�H\�\�ê�\�e�	J�\�\�\Z��F,�n-\��\'1\���\�`fP�w_>h�\�\�<�r{(+�`��@\�\�sCչ)��R\�\��Ђhإ�>@�\��\�\�B$J\\\�gJ\\4\"5\�)p�\�hE\�\�\�[��\"\�Њ̱鲶\�7]\�\r#v�:O�@C�y�&k{\���in\��p�Y\�	\0�\�}�\�C��\�.Zdk\��W�a�\�f\�0^V�\���\�3�2P\�XV�̜����\�/��\�\\�8�]<�`�dڳ\�\��\"ä��?+\�\�DF\'Pu�\0ȯ�!\r\�T�TX�\�~���X��\�XqQG\�@A	̗S&��M�\�Vm\�Ԥz\�>	�\�f�w����2\�\�\"\�q\��ݻ\�^\�\�y�}6�r�0-`H\�\�6KR�t�!\�v\�X��I��%�\�1\�\r��\�*\�&�\�䴌�\�&\�o2�=��\�3�\�\�Nk����\�ߙ-����Q\�M~Ww^m\��o�-�\�\�fF_5��y\�ϗ���9�\�@�X�E\�f��?j\"P\�\���!\�\�j\�\�TU�\�y�x�&Y\�<\'��(On�\�G�L�{ʟ-|W�\"��<�s�\�gfds�\�p2��:-\��_A+e�\\7�F-a�\'\�$����\";_\r�\�D��\��G�N�y�\n\��!�\�V�\�J��s�\�T1�\��\0׽F�C\��\��:f)�qd籄�0\�\�?9��E�  \�o\�\��+\�\���\�P\�,v@� ��(t�r�o\"�s�����\n�\�\�~�3\�f��a<W\�\����c\�as�\�:�Kl��RoX~��jΐ\�j�,�W4\'NJ$�z��w\�Bݝ�\�B�~D{+�5��\��\�s\�hEԷs\�Y��Z`\�qrԷ�\rXW�y`\�H;k\��׼CxϜ\��2\�3����j\���\�\\,C�\�g\�\���Ef�k߭�P�^\�u\�b�\Z��\�O\�\�<X\�ܳ(��\'S����\�G{\�57�|�W���^�\�ޮ�\�߮\���pKM\r�\��\��\�̃D\�C�b*ގF[�\�SĂǏ;&��2H��\�����f��ZP��\�\�\���b��\�Zfwd?b�ѶĢǌ{\��l#\�D\�\�`�j�\�\�n\�:�p0\�\n\��AH\�\�%�c{�\�=���bq�\'�F��<0J�+�HW`\�\�{\�\�\�\�\0ʀ�\�\'\�\�_Y\��p�D	_�o\"��z,n(\�0�4R�\��\�KxP�\�T�\�\��\�o梤\�\�\�>�r6kwy�,D\���\��q�1\�TV��Z�\�o䉻�\�\�á:��x�	\�\�恕%��U|j�н�q@K/\�\�W1t\\�<\�6�_v\"~�~I\��2\�a\�@\'��CI��\�r/��\\4i�\�1�صQ�=\�V��<��q���d��#ގr\���\�5o\���i�9\�g�]\�a�\�ۈA䢕�\r\�E5\n\�{`��\�u\������\�%�\�\Zt�#�G����acj>��2:�#\�Gf\\�����ˇ�82�\�N\nAYz��y{�ϑT��3SzR���9�\�e>}\�z&�Y�2/�\�\����!�v����@\��N��b9��#>o}\���\�\�@��E@*\rʾ�\�UxΖL7���.n�	\�\��\�bAHT�s jϧ^�v�\�E\'7�g\�l?k��E\0��݀0f�\�Y�<S��\�{E�B9��6k2<\�[��\�m\�\��\�|\�I��\�n����MX�!�Y9obƈ�o�U��R\�ukvdj�$�zb\�B�\�j\Z�*\�\��$\��lKz\\#\Z��:C�c�4E��@ԅ\�\�H\�˟Jp3��\�M\��h݆	�j~UNY\���:\�\��y\��\��\��=\�2_�Wӆ\�wd[v$\�h�\�\�s��\��\�\0�A���uZ�@@\�a�\�K�mky\��|&8�\Zg}��C�\�Y\�҅{\�̨;�N!�Q:�,�\�ޅ|\�A���\�\�EuP��B��\n)Gm�\0(��\�[\�\��8\�Q�.��m8k3���\�0iGF�\��p�\�\�3A��*B\�>A|6�QE\�ד\�$�1�-�\�=�}\�SCg���\�*�\�pmJ[�l\��\�y\���6��N~F�ƯH���<*��Rtxz���Q\�Yq\��0�\�w*\�,�b~o�\�~M�q�.�y֟\�z��W	�C\�\�C~d�˛�\�\�.��m|\�U\�u�`��w�\�&ͫo����A\�[[hC�8~�p=\�\�_\��\�\��\�+jۀ\�\�U\��\�,h�$N�\�\�\"a�MWir�Rȅ0\\\r-��U`�;\�s��\�/��\�M\�獍�\�\��!o8=�^��U\��xwޗ�\�\�Je�~\�\�\�E6\�w��s\�TY\�u�hH�\�F��\�\�\�K.�b־\�;��\0���6\�޿�&Ai�\�v\�.�W7$�'),(10,3,_binary '\0\0\0 ftypavif\0\0\0\0avifmif1miafMA1B\0\0\0�meta\0\0\0\0\0\0\0(hdlr\0\0\0\0\0\0\0\0pict\0\0\0\0\0\0\0\0\0\0\0\0libavif\0\0\0\0pitm\0\0\0\0\0\0\0\0iloc\0\0\0\0D\0\0\0\0\0\0\0\0\Z\0\0\�\0\0\0(iinf\0\0\0\0\0\0\0\0\Zinfe\0\0\0\0\0\0av01Color\0\0\0\0jiprp\0\0\0Kipco\0\0\0ispe\0\0\0\0\0\0X\0\0X\0\0\0pixi\0\0\0\0\0\0\0av1C�\0\0\0\0colrnclx\0\0\0�\0\0\0ipma\0\0\0\0\0\0\0\0�\0\0\�mdat\0\n\n&ey]�2\�;�\�q �a���\�u(���q�\n\�\0]&���T\�\�I�˺��\�P\�h��\�\�\�g\�ն\�\�:�\�\�\�36b\�TYCK\0\�Px\�f�|#\��\�+����\�\�r\�o$Q\��_	g~Թ�M�\�ܹ]h\�<�\�@Ɠ\�i�\\RM\� �I\�P\Z��,M���F���<�(�2	m\�7�\'02Cc\�d\�\�kp|{�.�A*��\�i,\�\n�Qe�%�\�\�8�\�\�0�\���db2��MpOi�hS��Nea���6�\�1\�a\�!\�ג[Ì����l�\�ʽ׺\n\�f�\"\�-BỲPxś\�\��\�{\�np\�	\ZJ<\�B0@�݊i�G��>Ҡ)9#�\���\�U\�}\�\�\�D���d�\�}�%b&Hu�\��E �\�MU\"�\�\�^Q޶�~�B2\�} VC�\00�\�\�W}\��qJ;3!X�U\�χ���0��Ŭ�y\�\�\�%}\�n��\�\�\�:\�_�t$\�\�e�V<��_q�սġ�\�\�xu�\�x���|�\��^\�H�@\�[\�\�P/� %)�Q>\�6H�iE�\�!�\��6�\�\0T��0\�\�\�\�\�ֺhÏ4�d���G/�\Z�.j\�\�W\�)GV�\�*\�d&�W\�ͷtEf �\��Ԃ\��Y�h}�wH\�\� \�c�y\��\�Fa�u\�!J\�ވ<�\'�w���\�s��,\�\"���\�*�\r/�2\�8��H\�\�\�\��{\�b��&&�\�2�x�\�4\��LT\�T�,vh�8�Y\�\�H<\�;�N�\�\�\�u�9���	!\�=\�!���ESub��~x�m��\�m7��X�-*\�\�\��Rx�(\�9Sv�\�!�8�\�n\�#Bݠ�j�\�\�X��K�?P��vNX,h�LՃ�k�\�&K��\�\�H�1\����\�k;\��q\�vz��\�h ��&�ڟ\������2ܛwҊ�Yd�,ڳ:S-w\�[�tk\�\�*\�su��e@���>��\�7\�C)H����ؚWꛪ��>��\�\�/7�-rF\�}{Q�n%/��\0\"6>\�S��\�n\�4�����\Z-�{�\"k��]FQ�<\�.����8<�ݘ�z*SLGO{��E+\�8�]\�L;\�8�\�-A�a\0Ѫ�	Ek\�oZͲ���;u\�Ve��m-��m]\�K-qn�\�Gv]_\�\�a\�\�n�#?��\�\�I��\'�U\n���\�?�h\�1$\�N\���o���\�\��\�d�\�t賰�>\�\�\��d9I��\�K�7\�\�\�h\�/)\��b\�K`Cm\�c8e:u�\r��w,(f��j\'�/\����c��\�ڥ�dx\�nBb7C�g���X\n0�㾬\�\�ݵ\�\�V�\�X]PZ��\�\�/�52\�\'\��g3�^;\�%�\�\�Bn�\�\�X�\�\�\�\��\�\�}ug\�6���G�*\�W��:�z	\��Q\0\0�\Z�*\���\��O\�I��O\n\�{р.+a�\�Hvr\�\�|=~�gـ+ߴ�\�mx~\nz�h\n��=�\�\�<CV��\�\�y\��J��09\�\�\\镒�%��S�iCB\�s6\�X\�\noҢ�vkI����:Rw\�:MHVc|�+k]�\�B	�Fd�{�<�we}z6*�3�\�	B¼;�f��\�P�\�$���\�߯QL\�R��ŋ�I9�\�bV��\�Ұ�\� u3jp\�	�/��mU�*��Fƅ¿o{\\�yVy\�\�a�K	\�\��W�:Lt5:%��\��q�@pƚ�$�oI\\�\�3��XW�<��\��\��[X|�r\��K�cum��.�;ƎP��\�\���I�=�I���[b{%y����w�K�\�\r\��强�74��<\�K\�\�$\�\�@�\\\�{�\0$HJfU\�\�CM\�\�`�$_ա���\Z*�+�Q%\�b\�M������dSՄ�m���\���n�?cE\'�	P�q<\"\�\�ӌڳ��J\�\�\�+V\���9�\�[_��.oa\�z��d��e8	�*M�x��2�Nr+�\�\n?�Bb!@�\"�x\�}�os�\�-�7O\\T<q{\\ވ\�W\�>@%\nl�|\�4��\�\�L\� 4(F�r\��\��`�F\��e�\�V\���T\�΁\�\"\��%TO䤋+�e<]\�\�,B�����Y�5|\��{�\�h��\�d�p\\\r\�	k�X��\�p~i\��D�x�\�x��/\��t�D�j\�\�3�c��YzI�B��\��}\�l~�\�k#\"�m����e��\�Q\��\�\�\�%\�~ۻ�E]e%��\�c�|C�RGS���K[\�\0;�c��\�>�\0V\n\���vGkm����\0�ëL\�Q\�\���W�?\�Y,��\'D\�\�V��WH4FJ�|�0�M��gl~O8\�s\ZF�\�\�ydX-��t�m\'N\�/\�\�t[�B�7�\��\�_\�R3\rA*H�sT�o\���]��S\�{���\�\�a]�\��\"����xn<\�q*M&���\�\�\'\�qN�\�\�\'P\�t�2k(\"!=:N�l�-#Q��4��/�\�/q*+ \�_�hn+[�\�	�P\�rw]�\�L\�@V\�\�\�ZL:F\�d�	�CM\�,i��\�������5�$*C(�&\�V\�P\�C8��PR��A�̣�\�,J\�\���[I\��>\�Q(	�*!&���U�͘Q\�?\�\�c\�\"!�ͭ���}�߹民\��\�M烓��@o��� @\�k���9�\�+��Nb\�IĐ�G{\�Y`$�݁aP]\�m�E&Z\��\�UG_j:�\�j�\�#C�%@\�����7�\�\r��u-~�\�sKP�t�q�w� J��\�z?G\�\��\'Z\"�\�\'<\n\�<���6����\�\"\'Z\���0��DV1�\0K\�\�ЮYC\\�f\�k2\'���5.\\�\�MI\�\�\�AI��B\�\��\�D79�I@�6n����Y5�\�\�N�\��(\�RG��UiYQ\\@d ��߾�|�\�	�>I��\�9\�D�\�\�\�\�Y!Udr7�dePV%{%\�A]�g������1��ƁT\��ʄ���I\rG\�4\nK��\�Dȅ��Y�\n�\�\�\�M����R�	�L\�\\$iv��T\'��\�\��a�,8�\rߩ\�x�k!	+�;Ď���ѿ۠\�k\� \�`wy�@��\�K���\�ty��r\"�5]�\�\�\�\����\�\�{\�G�\�F\�\�Q\�9mL���2 �%�&�\��\�I��C\�$Ch\���f��\�Fa~\�9\�\�\0o��\����K\�΃\�H]\�\'�L(\�&��z0\�C$�6�߬�\�(\�r��\�\�\�?j}��C9S}t��m\�.ǔ>\�e�֔J�\�&�\�\�ھ\�\�5Å�o\�^\�\��L\�y��\�|H-:2G)eW��#H�d\�\��Ej�?7Wi�\�ѓ�\�g�\�\�E�\�\�B��\"w;\�k8[����\�q\�Y\�\Z\�W�G��ϑ�1��\�Jⶖ��U\�T�C\�a)��i�D���Ù\�3yr*� \�(Z8�@י[�dVkr��\�\�2\�}\�YJ[9\"��MW1\n\�>�\�VYm{ڈ��H��\�\�0\�g�\�\�\�n8 XK��H\�Q�\�V\�4��X�\��[\�A(�\�Ӣ�\�Pw)!ǉND�0�ۣ��g\�\��H�_��\�x�\�3w}\'T\�\�q�~ۍn�6@p\�\�!�?)^L�d\�$R[\�6xʑ\�h\\z�W�\��		S�s�����_Wks��u�3\�p�\rA<�B�K���B=Z3\"�c9�\�ą�׉�5�\�z����\�Q\�V\�)bf\���v�i�\'��pm\'�T�\\\�D#��Lj\�ꤥ4]6\�kQٷ*Uc5p�\�g�h$e\�9\�R\�(1�6[�1ϴ0�K�[\r��NM\�w,\�2+���\�N� �Z\�\�P;�Kn\�MD_\Z�q�Pї�E��\�\�^��NW�����\�ӣ�[m��wk�C�\�(\�\\@�O�\�WuK9c\�\�U\�ay/\�\�\"���\�Q|Tp���\0�>W\��_ʴ�BW*K�t\�r\��\�\�X\�Lx\�@+rd�R����{�|oH<�Oh��T�\�Q-Rm\�ڏ,��l<�>��\��h���\�9�\�:�M��jRi\�S8:�R\�z�YB\��\�m\r�,c��x\�t?-e0߿���� ��\�\�:d\���բ\�B\��>\�K\�H6=�\�xk��2C��JG��;d�����R;.�&����4�0l�:�\�\���M[m\���W��^�}���d��+\��$\�b�Cqɼ�9;�H#\�\�ɬmh\��D-/\Z1\�m��Q�OC��I��a�/��U�\�\�\�p�wR�0]�\�Dx�\n^^�!�f�\�pN�U�6mt̙�O~U|+a\�4��u\�\��I\�\n\�\����#�#IN�\r\�іD�-�x\Z���\�ɪRk3Z��uJ�j\�w�\�\�\�\�\�*\�ޒ�u��\�\�Ձ�\� \�\\\�vܺ\'O<\�\�A֔E5�mis{�KYX_�V��\�\�\�\�\�y�GA\���g0-�\'\�\�\�O:�\�����1�6(\�fQ\'u\�s \r%۴����\��<=��\nm\�S��X�Y��V\01�Nr����+�����y�\�JcL\�x|�\�\���8��\�s)�������\�f\�8�[�����D���*E�\�M\�Op��\'8\�5U�ɖ4k@\� 𜑰	��	m�\�\\YZ?A�\'\�;`2�\�=ά�ꯁ\�Z{e���) \�K�\Z3GwüSI��flDQ�	?H��d->@\�O�{xmRfN��Q/�\r�k<H􆶙S\�\�\�\\7h<�٫f\�\�i\�\�,\��O�֤���/q\�1\��-���\\3�\\@h\�R�bO\�E�d:-o1�\�\\yƧ1�2\�z�]�G\�\�,]#iO��jN/��x+*�4{\"���]t�Ο\�	��,-�\�D�b���ur\�\�k\�V\��\�Thk/\�U�\�=8=lbt}\�J�D�O�\��|��\\0E�Yҕ��]=����ގ[\�\�\�p\�͆\�LLY��I�_cN\�\n<l0ex���\\rĚ*N\�P���y#��\�ML?\�\���y�ś)qlX+~+\0��,��]]v\� ��\�v	�K|.X\��\�gl\�+\�XPNV16P��ohTk\�H��6S��}5�\�h��\�\�\r�\�&��?�\�\�nN\�\n\�6�\�-���\�z\�K|w^tX�\�+\�>��?k��\�\�s\�\�Y�\�\Z�\��5���z�;6k���[֟U�\�\�:\�[[�u������G�wZ�ʷ[\�V��\�;?��s䇫�\� �bo�x�G�\����&��a嵼\�\�\�M\�GY�j=�1\�<@�@E�B/@\�(\�$+Vx1\�\��Xٺ�\�n(L�U\�\��v-!�3 $\��l�[H䗺�\�s�%^\0\�|\�h�b�c\�\��\"&\�\�I>*U\�\�\\�2�\�\��\0>`\Zk�G�:�GP�Ⱥ1���\�bl\�ek\�\�f�\�\n\�T\��L��\\��ȑ=\�8F\Z�����i\�`\�,�2\�ϟU\�\���\�|\��j�/��i#b�\�z\�\�P��\rBu��j\�Q�t7\�\�ֺ#�]SE��%\"\�vv�ܛs\�\�E\�?\\E\"%��\Z�z_�\�F|�I�Hms�p�I��?�\�ُ�\�f\'��BWO\�cy�-\�w]�ip\�VD\�\��3��6D��Zq\�\Z\�(X���>[1\�P�&ol���bw`v�c.obv\�\Z��\�����>�/����8˖�_�;\0\r���H��\Z�r��\�cbУ�dB)�Q	!\�Մ{>�\�DI܏\�R:ۂ%\�\\��<s\�W�\�#�\�\�i|\�\�$\�\r�J��<\�\��T\����ϔt�\�L�aR,�ʟ\�2b�������\�|�-w�|d\'+l�\'\�L�+mw�45\0#\�լ��\�|n*\0nL�+}<5�`̻\�\�\�\�\n-��\�ZqtP+\��\��4D\��ļڬ��r^\"U=ؔv��	M�c��\�\'\�\���4^\�\���Z\�\���0~�\�V)\�l:\�x\�\�m\�\'\�\�&eA/\�J\"�y\�_�ws\�l��.�JN85\�}�\�}y&�\�\"�H\�\�ê�\�e�	J�\�\�\Z��F,�n-\��\'1\���\�`fP�w_>h�\�\�<�r{(+�`��@\�\�sCչ)��R\�\��Ђhإ�>@�\��\�\�B$J\\\�gJ\\4\"5\�)p�\�hE\�\�\�[��\"\�Њ̱鲶\�7]\�\r#v�:O�@C�y�&k{\���in\��p�Y\�	\0�\�}�\�C��\�.Zdk\��W�a�\�f\�0^V�\���\�3�2P\�XV�̜����\�/��\�\\�8�]<�`�dڳ\�\��\"ä��?+\�\�DF\'Pu�\0ȯ�!\r\�T�TX�\�~���X��\�XqQG\�@A	̗S&��M�\�Vm\�Ԥz\�>	�\�f�w����2\�\�\"\�q\��ݻ\�^\�\�y�}6�r�0-`H\�\�6KR�t�!\�v\�X��I��%�\�1\�\r��\�*\�&�\�䴌�\�&\�o2�=��\�3�\�\�Nk����\�ߙ-����Q\�M~Ww^m\��o�-�\�\�fF_5��y\�ϗ���9�\�@�X�E\�f��?j\"P\�\���!\�\�j\�\�TU�\�y�x�&Y\�<\'��(On�\�G�L�{ʟ-|W�\"��<�s�\�gfds�\�p2��:-\��_A+e�\\7�F-a�\'\�$����\";_\r�\�D��\��G�N�y�\n\��!�\�V�\�J��s�\�T1�\��\0׽F�C\��\��:f)�qd籄�0\�\�?9��E�  \�o\�\��+\�\���\�P\�,v@� ��(t�r�o\"�s�����\n�\�\�~�3\�f��a<W\�\����c\�as�\�:�Kl��RoX~��jΐ\�j�,�W4\'NJ$�z��w\�Bݝ�\�B�~D{+�5��\��\�s\�hEԷs\�Y��Z`\�qrԷ�\rXW�y`\�H;k\��׼CxϜ\��2\�3����j\���\�\\,C�\�g\�\���Ef�k߭�P�^\�u\�b�\Z��\�O\�\�<X\�ܳ(��\'S����\�G{\�57�|�W���^�\�ޮ�\�߮\���pKM\r�\��\��\�̃D\�C�b*ގF[�\�SĂǏ;&��2H��\�����f��ZP��\�\�\���b��\�Zfwd?b�ѶĢǌ{\��l#\�D\�\�`�j�\�\�n\�:�p0\�\n\��AH\�\�%�c{�\�=���bq�\'�F��<0J�+�HW`\�\�{\�\�\�\�\0ʀ�\�\'\�\�_Y\��p�D	_�o\"��z,n(\�0�4R�\��\�KxP�\�T�\�\��\�o梤\�\�\�>�r6kwy�,D\���\��q�1\�TV��Z�\�o䉻�\�\�á:��x�	\�\�恕%��U|j�н�q@K/\�\�W1t\\�<\�6�_v\"~�~I\��2\�a\�@\'��CI��\�r/��\\4i�\�1�صQ�=\�V��<��q���d��#ގr\���\�5o\���i�9\�g�]\�a�\�ۈA䢕�\r\�E5\n\�{`��\�u\������\�%�\�\Zt�#�G����acj>��2:�#\�Gf\\�����ˇ�82�\�N\nAYz��y{�ϑT��3SzR���9�\�e>}\�z&�Y�2/�\�\����!�v����@\��N��b9��#>o}\���\�\�@��E@*\rʾ�\�UxΖL7���.n�	\�\��\�bAHT�s jϧ^�v�\�E\'7�g\�l?k��E\0��݀0f�\�Y�<S��\�{E�B9��6k2<\�[��\�m\�\��\�|\�I��\�n����MX�!�Y9obƈ�o�U��R\�ukvdj�$�zb\�B�\�j\Z�*\�\��$\��lKz\\#\Z��:C�c�4E��@ԅ\�\�H\�˟Jp3��\�M\��h݆	�j~UNY\���:\�\��y\��\��\��=\�2_�Wӆ\�wd[v$\�h�\�\�s��\��\�\0�A���uZ�@@\�a�\�K�mky\��|&8�\Zg}��C�\�Y\�҅{\�̨;�N!�Q:�,�\�ޅ|\�A���\�\�EuP��B��\n)Gm�\0(��\�[\�\��8\�Q�.��m8k3���\�0iGF�\��p�\�\�3A��*B\�>A|6�QE\�ד\�$�1�-�\�=�}\�SCg���\�*�\�pmJ[�l\��\�y\���6��N~F�ƯH���<*��Rtxz���Q\�Yq\��0�\�w*\�,�b~o�\�~M�q�.�y֟\�z��W	�C\�\�C~d�˛�\�\�.��m|\�U\�u�`��w�\�&ͫo����A\�[[hC�8~�p=\�\�_\��\�\��\�+jۀ\�\�U\��\�,h�$N�\�\�\"a�MWir�Rȅ0\\\r-��U`�;\�s��\�/��\�M\�獍�\�\��!o8=�^��U\��xwޗ�\�\�Je�~\�\�\�E6\�w��s\�TY\�u�hH�\�F��\�\�\�K.�b־\�;��\0���6\�޿�&Ai�\�v\�.�W7$�');
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `subcategoria` varchar(20) DEFAULT NULL,
  `precio_ud` double DEFAULT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'Camiseta manga corta','Ropa','Camisetas',19.99,'Camiseta de manga corta, ideal para uso diario.'),(2,2,'Pantalones vaqueros','Ropa','Pantalones',39.99,'Pantalones vaqueros de estilo clásico, disponibles en varios colores y tallas.'),(3,3,'Vestido de fiesta','Ropa','Vestidos',79.99,'Elegante vestido de fiesta con detalles de encaje, perfecto para ocasiones especiales.');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciben`
--

DROP TABLE IF EXISTS `reciben`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reciben` (
  `id_usuario` int(11) DEFAULT NULL,
  `id_envio` int(11) DEFAULT NULL,
  `fecha_recepcion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciben`
--

LOCK TABLES `reciben` WRITE;
/*!40000 ALTER TABLE `reciben` DISABLE KEYS */;
/*!40000 ALTER TABLE `reciben` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `talla` varchar(5) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,'M',1,2,1),(2,'S',2,10,1),(3,'XL',3,50,1);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido1` varchar(20) DEFAULT NULL,
  `apellido2` varchar(20) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `tlf` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,NULL,NULL,NULL,NULL,NULL,'ivanelvirabarbudo@gmail.com',NULL,'8cb2237d0679ca88db6464eac60da96345513964');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tiendaropa'
--

--
-- Dumping routines for database 'tiendaropa'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_stock`(id_producto_p int, cantidad_p int)
BEGIN
	update stock set cantidad = cantidad_p where id_producto=id_producto_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `borrar_favoritos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_favoritos`(id_producto_p int, id_usuario_p int)
BEGIN
    set sql_safe_updates =0;
    if exists (select 1 from favoritos where id_producto = id_producto_p and id_usuario = id_usuario_p) 
    then
	delete from favoritos where id_producto = id_producto_p and id_usuario = id_usuario_p;
    end if;
	set sql_safe_updates =1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calcular_bi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calcular_bi`(emisor varchar(20))
BEGIN
	declare base_imponible double;
    declare registros int;
    declare contador int;
    declare cantidad_p int;
    declare precio_unitario_p double;
    declare id_producto_carrito int;
    
    set registros = (select count(*) from carrito);
	set contador=1;
    
    while contador <= registros do
		set id_producto_carrito = (select id_producto from carrito where id=contador);
		set precio_unitario_p = (select precio_ud from productos where id= id_producto_carrito);
		set cantidad_p = (select cantidad from carrito where id= id_producto_carrito);
        set base_imponible =+ (precio_unitario_p * cantidad_p );
        
        set contador = contador + 1;
        
	end while;
    
    call rellenar_factura(emisor, base_imponible); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cambiar_contraseña` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cambiar_contraseña`(email_p varchar(20),contraseña_p varchar(20))
BEGIN
 update usuario set contraseña = contraseña_p where email = email_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crear_usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crear_usuario`( email_p varchar(100), contraseña_p varchar(50))
BEGIN
    insert into usuario(email, contraseña) values (email_p, sha1(contraseña_p));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fecha_recepcion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fecha_recepcion`(id_envio_p int)
BEGIN
update reciben set fecha_recepcion = date (now()) where id_envio = id_envio_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `guardar_favorito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `guardar_favorito`(id_producto_p int, id_usuario_p int)
BEGIN
	
    if not exists (select 1 from favoritos where id_producto = id_producto_p and id_usuario = id_usuario_p) 
    then
    insert into favoritos (id_producto,id_usuario) values (id_producto_p, id_usuario_p);
    end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_productos`(nombre_p varchar(20), categoria_p varchar(20), subcategoria_p varchar(20), precio_unitario_p double, descripcion_p mediumtext, foto_p mediumblob)
BEGIN
declare id_producto_foto mediumblob;
insert into producto(nombre, categoria, subcategoria, precio_ud, descripcion)values (nombre_p, categoria_p, subcategoria_p,precio_unitario_p, descripcion_p);
set id_producto_foto = (select id from producto where nombre = nombre_p and categoria = categoria_p and subcategoria = subcategoria_p and precio_ud = precio_unitario_p and descripcion = descripcion_p);
insert into fotos(id_producto, foto) values (id_producto_foto,load_file(foto_p));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_reciben` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_reciben`(id_usuario_p int, id_envio_p int)
BEGIN
insert into reciben (id_usuario, id_envio) values (id_usuario_p, id_envio_p);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_stock` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_stock`(talla_p varchar(5), id_producto_p int,cantidad_p int)
BEGIN
	declare id_stock_procedimiento int;
	insert into stock(talla,id_producto,cantidad, disponibilidad) values (talla_p, id_producto_p,cantidad_p,true); 
    set id_stock_procedimiento= (select id from stock where talla=talla_p); 
    update producto set id_stock= id_stock_procedimiento where id =id_producto_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `quitar_p_carrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `quitar_p_carrito`(id_p int)
BEGIN
delete from carrito where id = id_p;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RellenarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RellenarUsuario`(email_p varchar(50), nombre_p varchar(20), apellido1_p varchar(20), apellido2_p varchar(20), direccion_p varchar(50), tlf_p varchar(20), dni_p varchar(20))
BEGIN

update usuario set nombre = nombre_p  where email = email_p;
update usuario set apellido1 = apellido1_p  where email = email_p;
update usuario set apellido2 = apellido2_p  where email = email_p;
update usuario set direccion = direccion_p  where email = email_p;
update usuario set tlf = tlf_p  where email = email_p;
update usuario set dni = dni_p  where email = email_p;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rellenar_factura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rellenar_factura`(receptor_p varchar(20), base_imponible_p double)
BEGIN
	insert into facturas (emisor, receptor, importe, iva) values ("",receptor_p, (base_imponible_p * 1.21), 0.21);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-19 18:54:14
