-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_swedish_ci DEFAULT NULL,
  `image` longblob,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,'Scones',NULL,NULL,NULL),(4,'Blåmusslor','Gör så här \n1. Tvätta musslorna väl. Släng alla som är trasiga och som inte sluter sig när man knackar på dem. Släng även de musslor som är väldigt tunga, de är antagligen fulla med lera. \n2. Skala schalottenlöken och skär ner den. Skär även ner fänkålen. \n3. Sätt en kastrull på spisen med lite olja i botten. Låt den bli het och slå i musslor, lök och kryddor.\n4. Slå vinet över och låt det hela koka upp. Dra kastrullen från spisen och låt musslorna stå och dra i cirka 20 minuter. Alla musslor ska då ha öppnat sig, släng de som fortfarande är slutna. \n5. Sila fonden genom en finmaskig sil och spara den. Servera musslorna med lite färska örter.','','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\�\0\0\0\�\0\0\0o�4\0\0\0tEXtSoftware\0Adobe ImageReadyq\�e<\0\0BoIDATx\�\�}	|SU��M�t\�w\�F\�R�ldt\�@�qFq\�GD6���o��s\�}WD\�q\\\0AD��lE�RhK�\r�\�}M���97��/i�&m\�&\�;|\�%}\�\�{\���\�9�\�s	�DI$�D��IE\�\�h4����W^y%��\��qR�KE\�?ټy�L�dV�2�,��a	\�ɺ��\�\�*���0�E�e�V�9dl�D\������BV�RyJ`���\�/�,�k�B*��	8\�z�$B�\�Z�Z���r�\�)��-\�(����\�T��R��*�\�\�\�ؽ�\��\�#�L\�\�\�P���I���0d�\�\�{�5��L&0\�]f��L�P�moo��c�~$0yk\�\�\��\�\�ի\���\�\� �Í;\�Jҏ}���+W�nhkk�A�C$0T*Ufpp�p\�͔ܜB\�\�\�\�\�U�-��\��e�7\�>���ӓ\�$	�Gs�\�WQ�\�M@}\�Z�j�\�\���!Մ��`\�\��f�3�U��\0=�z/I$0\�Ѝ7�\�����`ԇ���>���%r��X�����\'&����Va͚5�E�c`TJV[C�,\����\�#mA�ѧh\�\�o��FG.��?�cH]�.!\�\�\�X�\"�%1и�\�\�O�\�Z�\�Yf�e�2v�\�ͥ�~w\�̙#�ڟ\������~z�K6r\�\�)����w\"w�mTd\�\�?��\�e�OOO?W�\�\�ׯO���\�\�A�ã�>J�\�\�\�iТO�;w\�?\�o/�U��\�@����������c��\�V]d���+3��@$�[�Gy$�ߘ\�^{\�,��A�/����R(\�\��\�s\�C�)�c���\���.]�\r\r�\��\��S�9\0�����!|VZ#l1\�\�>΄c\�\naUن\rV\��wt}s90���§�?00�\�;\�\�&\�\�r)�	=�\�\�p�\�\�[n	t���K/�t1�f��\r���\�/	nnnO�\r,\�\�\��#�E@ tvv*\�x㍽\�]h����A\0�V�ќ\�_DDD�\�n�\�\0a��\0J:\�\��^^^+�\�\��\�\'FEE���\��WYĨ�E�\�\�\�o+s\�\r�L$�\�R�\�7n|���\������\Z�.���\�oЪT�\��;v\�\�]w\�|F����VM�R��3iҤ_a���\�|||\�\�\�E2@������-0�`x\����[�\�\�\�\����6��@p |\�\�֖�\�onc\rT\'\�4�\nW�T�KJJ2�9bb\�\"a1\�\n-���\�ŋ\�`�\�\�:p �u�(\�\Z��\"��N�6-�\�Þ�HNi֮]�\�\�\��\�믿^\�\�=��\�?�lڴ\�Dkkk�[o��@\�2�\�\"�4�\�\�[�{� ��X�|�Y@pe���?\Z\Zz\�e˦�\"O2Q��8\��\0��~o�3�t�j\�Ji\0�ᙶ>|�)b��\�\Z `\�4((hSSӖ�\�~�K�Ep\n �*(U0d��\n��=��+V\�\�\�\�ȩ��\���������	�*\��\�<0\�\�\�\0�\'�\�{R%�u\�\�\��𧂂���9\�!򽬶*`\������q\�\����E\�8q͙n��\�d����)h�^��ڡBy�;\�6\�\�\�y\Z\�\�ȢE��\0`]�ϓ�#Oz\�j���7\�\����9\�\�@\�?|���<VBk�\��\�\�\�otY�\�V,\�j\0�uuu\�?�\��oص\�Z\��\�\�rI\�0��x�f\�\Z\r�t��`ќ9sB+^q�\�\�2�Xh\�\���xP2\0�|8N4w^gg\�8/Д\�r\"777[Xx/m��\�}\�\"//�o๖�T�_�\�}��\�-�u�ּW��#x\�gkkk7nݺ�kv�6gp���e�J�\���{�P\�KA\�vmذ�\�G�\�\�j�\�\�\�9\�\�ߢ���\�n?ki��gtP-�#�ި�`�Z��\�G�5hb����\�x�իWC�m�򺾪�\���\"��$�a��\�j\�I.����g�f$�\�\��~~~�\��\�\�\���ٳg�z\�\�1T2(�\�V%\����ߟ\0��@\���lYY\�E8l\�@�85k���@�r\�\�?��\�]\��:3\\\Z�����L�\Z�L�}k���\�Hxx�K\�\0�0\�\�M\ni\��\�\�X\�i\���\�۵k\�f�Iw��Ũ\�K�C\�\�\�O}��绌,�\�Y�\�\�\�$�v��Z���\�#333\rt�\�3\��\�M�{С\�1\�A������\0�\'\�@\�\�\� �\�@\�h\�\�u�è\��\��0 �5i`{����e\0�bg0в�\0͹�/׃\�\\���S��qo\�B\��\�\�;\��o\�\�/2�4t\�ݝw\��\n��q�\�w\�ԩ+AD�l\�O@ \�w\�}���4\�ߕ���\�m\�v1k\��\�Q���%��M�9E@0h�������׾\\\�\�܌V�@��\�|Pȵ\��^\�\�\��vaa\��~��>\0%(\�B\0��\�\���G~�\�cL��\��	�WZ�Tn\�s������\�/�e\�\�3@tx\'Y]\�f���\�\nn\�\���/vtt\����\\b\�C�p�Bko4\�(��N�S�L�\�\��>�;v\�<�Z\�.�(��������\�\�\�Ucc\�^��Κȓ\�38��1\�z/A\�ӗ �\ZZڽ}�HYYY%�P����\��\�Q��2�\r�\�@\0g���\�{\�v]�+aP-w�\�m୚B�Xc+\�9y�䞑#G\�f\�5�Ӝ8q⻥K�>�=\�\�^[UU�S���:\���\��`\n�4G\�\�\r��8�\�\�\�\�IKuz����e��\�U�0h�A�\�ĳ\�rg��\�hL\�]�c\�^�-uKK\�.[�	2�\�\�\�Z�Je�uHII\�#à(8�34��G�1J+������\�4B�G-�\�,�e�\��\���#�����\�_G#����?V�r\�\�0\��%2�\nRQQ�\�رc����ma\�\�\�㝸��\�[s��?\�\�\�00��Ǘ�mw��}��]����:�Xf�\��)\�h\�\�_��E�\�Z��8\�CF��lق&�0\�k���iӦ�\�j�wPເ\���\��\�bˣ��7�8��\�H\�X1�\�\�\�A�,GqOo\�TWW0@��m\����G��\�\�\��C�}\�ZXJ7\0%�:��v���a�\�¬���\�\"�G\��N\�\�\�\�\" ��Sm\���\�\n���	�bŊ�Q�F���\'\�	X�3@�R�R�\�\����ϋD\�Њh�A��\�=�\�\�\�\�\�ڡ\�(�\�jkk7��Mo\0�hb\�\�\����υ��\�\�\��c����3|WHH\�߬y\��\�\�~��`8s\�\�A�\�\�\'�Y�jUHhh\�S�&!؎;�\0렚�\�)\�J2XS\n��\��±�.|8\�r��)�8)\�\��ԟ�\�\r\��\�b\nx\�>�k}�L8�}��\���i�\�x\����\�\�5/����-f\n�\�Z\�m\�\�.3w\�w\�}w�\�$V2��@�ظq\�9K���?~��\�\�\��ѣG?f\����\�\�R\����d#sL��M�[\�,\Z��ET�Ĭ��sUh�\�`[�z�\�h��f�\��6_̥�\��|\�\�b�I[z�2�/Z�h��*\'{5��Nf\�\�\�����\�/5u]MM\�\0B��r�\�6Mii\�\�\�\�\�\�aٹs\�:p\�\0*g\�Y�~ߗ��\�\�\�\\a�����\�\0\�)F���ET0��?:mjƗ5~�\�\�\�~{sDD\�\�@�$�X�j;\�Ĕ��ĉIII\�Ṷ�:�\�!�(]\"G�{�\�\\�l��Kc�\�G�\��\�\�E�\�W\0т���Y*�\���\�p����\�@8P\�\�})�ow�v΅>�i\'B鞓@���\���r\�W��9\�ӧOg�\��N�\�\���\�\�lmm=��j\�5��\�_ \�\�\������\�\�\�\�p\0V���iii/AK_Ε��Z�����CAAA3��	�8��\�۟nii�B�\�U2V��\0�Z���J\n����\n\��Z\�ĭ\�\�{\�\�\�\�y�=ꤩ�\�4L/��Q-/�\�\�\�]xJ\��4\�۷\�(\�\�\�\"6��\�К��\�O\�.++�p\�^\�\'�<]\��\�4��mll|]|>(쿠\�.b\�h�\�;!�\��\�\�s\�W^�����\��\�\0\�\�[�\�b�jv��̟�`�Z\�l+\n�t\�a\�u\�ΝϳƠ��x_�CY3B|�\�E��7�vm]]\�\�\0��H�Z]	[�\�\�\�~�\�\�\�I\r�+\�uZ\�\�\�B�����\�u\'X+ߎJ�Zkj��2��@q8��\0\�LIQy:\�|�\�;i\rjg�A\�8=\���E\��D[*#�D6w\�\�\�\0�\���?\�\0~	\�@�b\�I)\\���\�t\�\�TU��&YQx2\��\�s\�=\�@���t>rp(\�@��H�v5�4ͤ{4�gbbb\����\�\r~�D��\��\�?��r.k�۸r�F��\�\�\�6�o+���Ls�\��O�B=�\����\�\�\�\����,w���+��BIg��ʊ\�\�k׮��ꫯ�\"N�&\�a� *�ߺu\�vC+h�\���\�~��~%ݽ�]F�-\�H�={���S�����Y���\�\�\�ӟ;z�h:k\�遨�y�G9���\�dß����QQQg����ά!h�\�O�\�\��5\�����jM��\�/�\�7g\r�u4\�\n\�sgpN{\��\�\�3f\�\�2r\�\�M�~�闼29\�u�Qn\�ر��\�]�I/V�\�\"\n\�c\\�QL<\�@\�\�>�쳢�\�\�\�7\�ڋ�\�\0q���`a+..��t\�tk�dL)�\��\�\Z\Zz9Ρ���y\�q\0�����W�l\��.�\�N5*ڡ�\��!\�ؒ���h\�u���\�>U�`���1\�\�A�\�l\�b\���È\��\�]w\�$�}��6BidII\��,\�l�\�\Z��+`W\�,C�\�eF{��5k��E��Z����;;�\�䦦�>>V!k����.�&��.y~\�T.\�^\�\0�!13\�؈\��=\�0sx3�T	��n�a^||��\�\�\'\ZE\�2q�Unnn\Zп�y�\�\�ϙ3\�u���\�EEE��$\�\�\�9�8(�i\�\�\�\�\�f\�|��w\0\ZIw\�bq�N;���z�\��\�_>nܸ[\'��\��\�Gmu\��\�j�#�k\�^s\�5�ϟ?_���QA�C\�W_}�����\�0\�=�	��#G�<���e�Up����؊�\�7\�tSPLL\�u�,_�\�V.�Gp\���BW��Q=/ҝ��h\�;w�?X���\���\�ݻw�^YYy�t�Z�s�\�;\�dCY�@�px\�\�}�<MAh>~��\�\�d�p�!\"�\'\'F\�[\\}4!!a\�@^�\�\�&6t��E\�\�\�)�X䥗^\��c`\�_\��M\�����n�ӧO\�`���R\�ą&��\�{6�р^6\�\�%\�\�)8-r�F����dİ\�Ƞ6���:��S\�͚5�%ӄ)ihhx\���\���\�.Wg�tsݺuˁ^~mGZ��E��ܬ\�EF���6lHʁ�\�\�~�Ô�\�_{\��\"\�Ue�L\�\�g��|�\0�\�#F,1e�m�\��\nv/s�D�\'	�\Zh�@x\�^������Ν;q\�(\�\�\�Q;5-�\�2�\�8\��\0�Y\�\�\�5\n}\�\�aJ��\'\�4⢂8��;::N��\�L\��7\�|3M\�\�\�e��偸�8�\�z�\�\�����/�������\'[�r999w\�ڵ\�[\�p\�Q�l�\�q��=��\�\�ԍ\�\�\�\'Iw��W�\��\\y\�)))u��R\�a׸\�|�\��A9\�@渻���w�B�lp�M�6��A���o\�\�\����\�ѣG/���\�ޮQ�\�Jb祠�A��g�=����\�\�\�\�s�h\�\�\\�a\�\r�^hHw/.n����\�gا1e\�\�ѹAAAI~~~�\0\�a���?2f̘M�O�~��\�{<99��iӦ]x-�52Ѫ�dff\�a �M\�\r(�m\���eD4���@r\�>\�$#N*v�eF�P0@�9��7.�\�p\�111�����j�\n9@\���&0\�\�Y<�\�M�ߚ\n��\�0�\���������\�8ܠمi�����\Z1iҤ8}5%`Q�\�\�\�\��@X\��\�|�K\�q����-����C��S�ƍ7n&\�/\0\�1��u\�\'Q�T\�_}�\�\�3%\'��\�]d\�:YE\�\�;p5�\�,e\�Y��\�!	��\�\�ւ\�\�\��#G�����x-[�l�%��Sf?��������bGy8\�z�\r@e�f9��A7�B�g���\�����f+8.^��\�֭[_a� #\�\�mUĉ�����Pu���3nN\'\���Ŕ:VD�\�\�^\�\Z2\�\�A\�\�XA�D)n\�r͊���	�6�G��\���f��\����\n �;�x\"2���(\�V���x\�ٸq\�\�֬\��@-\�\�\�\��\�ԩSe\�p*,1�׋+\0f0�&Y���Dp�y���S&���\�\�?�\�g�ma!?\�p��n��eFWZ\�M�\�m�\�\��v\Z�V����B\�k\�\�\�3v\�\�\�@\�䦖\Z�ԯd����?\�V�)p�\r���{p�\'1�|l\�)\��\�+�`\�.��\�>\'�[\�S\�\n�^���1	8�P\r�E%����T\�Ϥ�l\�g���\�K1�;du8$c�D-��[\�@�\"�\�88�)))\�;\�\0��1����\�\�a\�1�#Y@�\��p\�c�m�M9\�G�_v͚5W\�1�&��\���\����sy_�C/\��\�Lc2��L�����;��$\�)���\�J\���\�P�^�\�h�\�\�\��P\��U*U({\�����Hw\����O�\�8J�9\�2V\�\� �$\�\�zt�\�\�\�\�ZkA\�lP*gu5�~h\�5�,��\�1@�1@�K}�ҷ�������BkEJ�m\Z���wZ��\�k��\�`�Oa\��ʬ8Of\�<Y��\�e,B%c���̑P\�#�KD%9��3���3�\\�bż������|ggg%(|%*7\�EG�\�ٳy.\\h)�X�56��M\\n\�o��h�|:�*��^\�\�\�+\�䱺\"��ҽL_��\n\r���\�#\�}�@c�S��{QU\�\�|n��\�0\n\r�\�4��A�\��nB��u\�0�\r\Z\�9*Ht}\�{ȍƂ�k\�(�`bo);$\�>\�`\�q\�.o�x\�\�x\����\'\�/��G��bd�M<\�|�dE\�.m��z,��M�\�F�\��7$�\�]�\�kA\�]\0\�!�V+#F[\Z�rY��B\�`Fq\�\���҉�C΃�\�x���-�[p!\ni?0 T\�AD&�|\\3`7v\\��\�c\n�ڭ����Y\n,� �*�\�e%!�ʒ�\01\�t�\�\�\�� S�\�0���$2<To.�aa�o�]}cl�����TTU��\���D\�\�+B�@э�:��\�di�wm��W��\�\�$�������\�\�YiW0<�ƻ	`\n\n�!\�\�\�ݠe��#�~=�9.jd�\�D��2\�t\0(.TWþ�\\���\���\�_/,.\�\��1���t\�\��&\�*\r��A.#��\�zO�\�t��W�P\�0	�(�O�b�\�~���Љ�D��A�\r\�\�ݝ�\�\�RPRJ�*�(h\�þ���`a:�c	z�\��=�\�\�0A\�U\�)\�X&#\r1���]	,v�w��?��;*�x�9bXv]C#�oh u���r��R�\�\r��5\\0��L\�\�\�A*������\�T��E\�\�`p0ty��d�\\k��	��BTg�J~Q1U⼢\"�9���? \�v���� �B\�\�\�8��b�\�pܠP\�Kb\�B��B��+�p0�(��V�\�1FP�OI��?d@x�+HyE�^\�`\�Ѯ\�\�\�u�����? 0a3\Z��\����|bdh06x|�� ��/`\�ct��@\ZFF\�D\r�c\�jr���\�0p�\0ik����\�_�\�g\�!M#��\���\���6\�\"�\�16	K=\�؁\0��9\�sg\�\�q�xN��?\r��\0`D����\�w\�YB��\�6\�\�\�98P\�\��}>-\��\�\�\�m\�A\�mi�/65�0�Jt�\�\��ڣ��\r,�{v\�@��\�\�2]BI��f\0	\'A\� �����\\���x�:zL\���^\�\��\�c��Dts�[�2h$\�`\�6F�\�c�NhQI)),.՟\�\�\�NA�K�GP@\0.i=�\n �\�V\�|�\�rf!��\�\�\��@\��	tX�\'\�!Rdg�Jv�IB�#\r��^\�\�\�2]?��\�8!6@AFF����E���\�2�C[wF�P\�kQ\�m�C=A@���r�Pnv�8oV\���c�Bp\�&��\�82\"R�\��\02zT�CT�.j\�N�;����	\���\�ŋL\��\�[C\�5@`W\� 8\�\0:�\��~~Q�AWTd\�F\�6\"�� �\�aħ��)�\Z\"�\�^XH�G�\�\"\�;t��r�[��QF;�\�28,�:_QA\��\�? (t �=$~�d�|]�S\�ی\����\�\�XA�\�Y6( }\�4�O\�ղ\�U��\�l>�]F����\���\� �:q<E*kjHv~!ihlrx\�a\�\�A=r$���W&�\�\�e���$1P�x3\�sJUV^Nrr�H	\�\�\nY\�\�´�8C.\�\�\�;%:\"SR�\�F8\r8\�2�Ľ\�ݻ�\�,\�[Ow2w�4r�\�YEe\�\�\�3Y���F�`�A0lx~LWvBƍ��{pl���7�&�2p\���\\� \�Y\���Je2Y�L&O��P����)&�3\�\nÑ\0b/0(\���je����C�_��\n�G\�\�\�$\�y$+?���\�Gx7`�>uR;:ޓ~JAP��\�QR^FJ\�\�z\�-���\�8\'\0H��R�2>a��\�\�ċȸ\�h6�ʻS����ɟ�l�):�\�\�9d�=�Bg\�!(\�HVn>\�yve �Y|\�|2\�\���\�\�fj\r���Of�\r�\�\�p@�d�;�\�O�1��\�i`\�Ѳ\�\�\�ԉ�~Ya(�a\�9\�Xsh\��\�e\�\�j\"{\�4ј�+q\�R\�fJ*��i��\�3t��+Y�7\�p�Yt�\�$���b\�<	�RA��H(\�\"��\�hA�RJ\�\�(0�\0\�9\�HMm�9��\�f\�#ePin@��<=SF��U�B�\�\'��\�\�A\�\"S\�o����\�\'��=�[��L��d�8\�\�,�Jg\�\�\���\�	3\�\��\�+a�\�컢�[\�Y\�\�\�{~-18�}\�~�-E�����C�ل\'ct�F�8Ш�U\�s�\�\���R\�c�M:\��\0\�`��\�S}:�|R� {\�h��Op\�\�\�\�\�+[}��`�g��q��8\�\�\�$3\'Wo\rP\�G��%�M\�\�JX+H�t �e ��\�J��C��98JL��Y�w\0\��\\�[\�斒�4��\�\�ځ\�`f\�\�1i�\�m�V~�F�f\�j\�\�Ɛ�7-\'���\r\�F\nUP\\B��ʠ\�-5:��u\�g�=~\�\�\"�\�/PJ��\�#�i\�\'\�\�g\'O�J^[WO�J��\� `z\�?6͢\�\�\�!g��a�\�b3\"j0e���\�n/O��I�\�)U�|�A\�N-��\�\�}Z4d�J \��q��\�\� �����\��\"H�\�Z��\�P\��N9H?�3����BM	Z�\�\�\\ڊO�<�*-�\r�}�?k��8|�\�yD�\�\�M-�Ѧt>C�����!���Y��Y\�鿞 \�55�@`�\�Z���A���)ƟdVC\�\��A[\"�t��N-�n\�[�\�\�\�\�\�I\�\�Ot\0]�Xd��\�`\���\�,�{\�L�\�0͵Ai�L�\n�J\�)\ru�$b ����\��\�6�h5\�9\�h5t֣(\��!�P3\0hA0 0\�\0@ҏ\'-�m=@`�YoI��N\�+���iSv�\�\�Vc\�Z�2�!�Si\�\�\n\�\n�\�\�܄��7�\'\�gf\�\�P\���E�N�ظ�v���c\'3��^�p��\�1��<a��<�����b�1v\�\�)\Zu\�l9v�W\0H�)��V\0�=�?�͘2	\�\��\�\�l\�C��@\�:�^�]��\�\�\�!���m@!�Sg���B\�1l�^y��VaѼ\�J�\0�s���\�ۋ\�\�jE\�i+q&\�,9\n\�̙,RUSmƿ\�	Шá��M;F?gۜ��!�F��\�Tߩ\�\n�\�!Rt���>\�\�\�vI�4j�\\\0\�ih�p\�9\�9v(q\�h�\�\��\n(�\�b{�W\����\�bE\�)*�u���R�\�D�\�R\�A<\�-I��\�D7g�˔�p��\�F��\\\�\0@h�/�C���\�u/O\�[���\�\�ד�\�#\�K�\��\�06	зȀ�ƍO�\�\�\0�\�]\�R���~�q\�\�b���\�\�\�J��\'Gҏ��\�\�Mԑ�9\",�`!p\�\'\\�\�\Z�59C\�Gxմ�\�\�\�+\�)Z�W�\� \�\��o2\�,F>�\��d\�e K.\�U��D8�:\�\�Y�0$Uq�h\�P\�\�^j�&�X{�!U\�\�\�Z\�ص���G�\nŉ\�f\�\�yۘ�\�xmp7G*\���\\y\�4M��\�-�]��eZ\�ڦ�R]SK�\'O\�S�\"��L�}%I��C�\���\�\�IG~vv����w�\�\�-]���\�\�\r�lhj\���Ǻ=^�8v̰\0>�||h\�5�v\Z\�\��a\�߱L$X\��\�ڋ\�G\�+,��Z�\�IB\�\�&w�\�[+��ۓ\'M\"3��\��\�4\�ե\�\\�\�hFj�\�#���8�tM�:\�`��0 δu���Y\�\�]5�}\�i�T�Lp�\'O�@\�\Z\r�<��d����	k4j�\�\�(X\�\�e\�~���Ժ\\:\����\��jnR\ra�����\�\�ԹƩ�\�Q� Aj�\�@_(xx��\r�\���*��\\\�}�y	\n\n\"�\r�$\�\�9�w\�����\�2��qh0��V�:>L\�S.���\'�A�6�V\�LOHG[#���\'M`\�;\�3Z�_!7\\��d\�\�Q�\�\�a!aV0g\�K\�\0�l/\�N�\�`\�Ap 8@���Ν\�%�Ϝ\�ׇ\\./�\�\'$\�\�2�rG-$\�\�c�%\�\�\�Ax�,A\�\�l\�\'�w\�{�Rf&O�{T\�\�h\�\�M�v��3��M8��\�1m\nr_�3�L�x�շ�,Ŭn?B\�\�T[wQ\�|+}:&+.���c?ˍˮ��g<ƽ�\�B}�h�r���\�p�L\��ؓ\�\�P���i\",܊}[>���C�\0q	í\�y\�(�\�%\�S\��\np���Í\�*@\�\�y낳���+�p��aZ¡�Gu\�K\��q�~�U�g�qǥIbatI\�TԷ��J�Za9�^�k \�~;I��8\�\n˗x�)��:\�:\0t\��[\�\�\�w8�0!q,�rM\�%;F�\�4]eU�~\��`K#U%X�(ң��C=�3��*`]J�Fc�A\�\�/\�b�\�P�\"�}����\�\r���\�Y_\���<�\�住?��f�����\\�\�J?�̲\�u\�m$:*JO\�p�?��\�_v|�����=����hE\�B��>�(۴NgD5<}Jg��.\�4��\�TVא_32\�\�_��xDx�~���I�\�jp``D�;\��^��̞9����JT]]z�\�\�DK\�j/=\��3y���%����N�\�@7@~�\���H\�3\�a\�\�\�4/\�\"L�JE{s�\n\0/,�4v}\n̹z 5�\�@��a!�b(Lt�`.$S�\� &\'M�π\�\�\�\�M�O�*i\�\0ӡ={ �\��/�o�~\�\�\�j\0d~�>;.�\�1 ��\�bIr*00��\���<~klk��.zNz;�4*\�\�Y�3�ҍ\�M\�D�\�H\�#gC\�{<\�\�\��\�Y�\��\�a\�mo)(*\"��c�\�[o�\�\�$����[u\\t�?�MJ���\0�R\�{�1�.W&_���\��z�%X\Z;�=\�\�i6m�>\�([\�/�L�J\�s\�Jr\�ܹ�6�A0:�ThǷߒ��j�c\��Р\�O�NJ\�Üe\�0#b�?ir\�jAS\�\�\����ԟt8\�	q\�\�K�\�\�!9\0�g\�Ǎ%߰^\�lh\�\�\�\�\�cG\�\\#B\�wcryUHp��|ǨP�\�H/÷QNZFX*9!oi᭾��cj�\�\�\�P\�\�$88�\\y�B\0Ƭ�\�Ǎ#�QQ4�\n\��\�	\�r�\0����wwefhp�W�Ə?�ZB3F�h\�2��\�6\0\�\�\�^�U�\�P\"1������\�W0o\�,\�O�g~\�ÏHʡ#$,4���ܳ�ƛ�1\� %��\�\�r�ޞ��\�\�b��/aV�����Y��Ϫ�\�\n\'.;\�;\r�\�Կe�&\'22�8d��\�\0�9$4��LCCB\��1\�\�7\�\�\"+��N\0(?l-�-������\0�H��\��\nd-\0Z�\�\�W�\�C�x�����qjv�\0m߽�nӧN�\���s��\�\��_\���\�H�F\�bb,�\�H�\�\�`\0@ \�[~ ���8\�\�\�w(>6&�5\"\0���\0A�s)9�\�+̑�(�P�%0y�\�\'@�t\�b\�\�[\')��w�~��\�\�������C9���\�s�@N�\��� \���F P(\�\n�}}����L^\�Z�6�\�4�\��&S8yC�E���RA�\'\����\�\��?\�\r;\��.YBfL�jQ�Q\�W\'\�\��<��f�\�c����\�;x�\�\05̣���\�Pf\�\�	�3A\�K�V���ʠ\�\�Y�n\0D����(��\�f\00�i&�~M.t�+��Tk4{\�\r�TL�`[y\"��%f�F���\�8!o\\l\���\Z\0�\��\Zg���)�\�;x�̞>\�\0$8�\Z\��\�� �A\�?MAp�M�̂����8\�\�\�{(!.&(\�E���q\0t�|�N�ku0�Rn����\0���	B�,P\��q��\�� �/\���y׮!Ǐ\���\�I\�ϿCZ�	\�\�	\�L<�\�@JaQ\0*?�,3cK@d����\�}O��\�|��s0\0\�j`��2�\�\�	(�\�C	S\�,�?�,�7�<���\�I�\�^7�0�^7/��\\��*\n��SOr@�ԓ8LL=��j��qz0\�f��\�7�\�<s�MG\���\�!B� p�aP�þ�>��\�d�Ε�UDl΂\'��\'\�Ε�\�\�w�����,]X\�(�\�\� g�F���7�\�/��]\�V_��\�\�\�w8��C\�r\��Q\0G�M�\�<{�����}\0\�\�@�T*3}}|�����\�aԧC\���0�J\�@�p�X\��\0\�ӂVx\�\�@`n�s\��S�����\�-[J-X��\�,\�aB���J��~�5~��	�C��\�\�\�h\�\��p�Y�B��z�ʎ\�_]SMгW\�<8��������N��<\�����\0\��\���\�y\�@`H�t2k\��4a���#n\�d�/ITtUrTp\��5\Z\�\�HDh0��i3k���Ÿp\�<]�����Z-�\n�\�L\'��\�R\�ܕ\�Ӟ��ꥎҵ��P�����x����� .\"tҷ\�z \�\�q\��q�\�1�`-�\�Z��=?�R\�Ntɳ����\�\�2\�\0�����\'ig\�/\rfnnn�\�\�~�>\'�G�8��?\\\�\�V@\����`\0 LqE�Z�\0\��\�\�\�\�I\�=\�u��\�)<B\�M\�fU\'\'\�oj�\Z�8.S @�W\�\�V\�t\��?z�\r�HO�\��~\�\�\0\�R`\�/�%S��b㺳��di55t3�H�8h�=�u�\�\����M�Ѱ\��\��6J��4`�\�\�ݽ\0hOО��	�\'E�Fea+�\�,a;�-�,��t�]9�%@\����\�\�9Pdn�\�\�\��\�/\�)\�^gB���>\�\���3�\�CCr�|}�2�EԦ\�\�&n�e�A	}�\�\�e\�P�/:#\Zΰ�@@	��)9\�r��\�<#�-ݏ���<qܸ\�D7�ݨe\�\�\���6\�\�ί\�F���[z>��nva\�*�^�Jp6��\�ۋ��ګ=:\��#8\�\�<H\���Uhp�KI�\�p�l\r\�:�Zxq\���+*�SX\�:\r|3\0Cieu`[g\��F�\0�\�P�8gu�[�~@���Ӂ_HKK��c���~@\�\�@�⛙0\�(7��\�\���@\�/�\�R�_uY\�!R\�_{�\�$i\�/\��~6��C�9}�D7���\�Һf@r\�\��5\Z�ͩ�\"\r\r#��&��a.\�$z�O\00$\�\"��8DzI�\n\Z��NЗ�D\"��g\�&=\�8\�\�Z�(���O��Z�5��\��\���6\"�\��!g����c�ݙ��A�\�%豇@hz��躁	+�W��+\�\�\rnf�VRyǷ2P��\�\�\�δ��9�%\�v҄	d�\�v+D�\�\�Db8*T#�N`XE�-�ݫ\�S+�\�t��@�p\�M�,Ab�>Ž�Y�N�\�,��AfL�p\�\�=�V��\�O���q\�ĉt�+D\�\�\�\�>��X�@g�f|�[�̓�\�Lt\���V�ZB�L��\'\�\�#�/\�QK\�L\�$�c^�c߸�\�\Z\�\r?\�\�\�\�\�\\\0\\����.8R\�G��O`�<��\���\n\\�w*��i\�F�}��2*jDd\�%������A0v�MT&\�\�O\�-tȳ�sHVNI?q�\�\0@\�	�孷\�<(e�֡j�\���y�\�\�\�w�hR\�\�͛�=͒3m��;�\�\�̼������%�w>ҳ\0�\���@�0\�<���![\�z��X�Tk����<��Z�\�\�]�\��\���c�Iwx�3H��k0�,�x�\� Y�	\�\�V\\RB��\�r6+{�@��\�̺dP��2:!�\\:g6\�U�\�-�J�������%\�\�ݎ�L�\�\�\�\���g�\��jn5�3(b�\\��\�b�b�t�����1�H`@�\�?00P?\��\�\��揿�=]\�m�d\�\�\�5\�כ\�kaQ�����?�\\^U[Su�[	�܌��0x`�\�\�ՇB%]\�+����\��E�4+�!\�Ǝ!�f\�$����_ ��@��\�CԲtww\'�/\\@J\�\�Iiy�\�\�G\�\nBLg�\�\�\�\�\�\�\�s�G��\�i8\�a��]]W?F����\n�\r�\�e�;Ga�a\�V\"y\�T�v�\�R��.�3iάY�^��E\0����\�g���եx4\�\��IZ!���\�\�\�\�\�\�---y�\�M\"+!P8��;%l�YE�\0\�]\�\'\�3\�x�\�\�\�5���rQq	Y�\�_�>�fݚ�ȒE��\�q�ÿ�?�j�v\��Y7�b[xH\�?�O��G�X�F�(��m5a�A\';T���*\�t\�\�\�[/\0\�\�\�$%�e��h�Ԟ�Z�\�=�n3�\�s\�j\�;Hγ-V�\�2hT�=,�V�Ijni����xtCCcNԈ\�ܷseK\�03\���u.�����(i1\�,\�\\��bciT(..�\�\ZH:�\��o��\�&\�Q\0i\�\�8�T}�\�\���\��\�3�**p\�\�\��\�\����FǏ�$݃�	��҉�����\�eMͭ�A;R�޲ML�8�,Zp�g\�_Y��Q�M\�V���b�\"�Ik�F��\��?\�#\�\\\�ry����[b��\�+\�\�\�jW�M�4_��\�B}\���Ow�o�\�ZGh4\��\��c$*7?���\�~r %�ň\Z9�\���訑d��_�?�b�b2މ1�\'��y�h𠢲\n�J�w�r�oh�\Z���Ҭ�F�rQt,d\�0�A\�\�\�\��Sk{�)05\n7�BZ!2Ҫ���z�[Z\�Hn^>\���^r\�l	7�YD��\�\�+U5\�V�a�\��:g�\�\�Hr�ҥ\0�i��r\�KD\'��9a��\\\�p\�T1\�K�6��\�q�\�p�k\�|�b~>�[م\��-m��\��3�\�]\�@�\"Mu��\�\�\"O�#�R�[o��LJ�~�\�\r\���f�\�\r\�Z\�G�:� \0��<�b\�Z+82OFe5�d>oOk�f|UɁ��32{PSa��RR~abcK�ֶ�[�Za�!(:E�ٗ\�$w��\�*K��\�&\�uF��\0HI;>\�$/?\�\0F\�\�˞g/$0. hu0+�a\r�(\0 N/���\���Vai\�ԋu�+;�T\��H����\�\�;\�$K]\�\�sLNJ�֡��	duμ��z(��(\0ľ�	Ⱦ�\�\�\�`0��fXHV#� ��n��ؘz؎\�74>[XZz\'P�\�\�J?~\\}\�7ޤ����E\'\�\�T���)F	��\r\0l�S\"�$̀@3!�>ת(�ǫK#��9{�A��3\'?Sz�¶�������\�ѡ�~���\�{�W�cq\�28p��6\0�C,}{o�\� �\�s��\�F�<	\�_Ξ\������9�V\���y�֬\�@��ߧM�\�\�SF\�-\�\Z\�\0>C>\0`\0�=\�vH��U�!�7pߙ�8��\�\�\�SyEůt�Ջ�k3����>�y��k�Y��}\���VP�v�G?A�A\��TIA���Exhh!l�\�O�z����\�\�1nim!�=�$�\�w\r|쥵��\n\0P�\�\�յ	�\n�ȞfV�u�mm�\�ʀ	|}�	����1\0�%�0��}�\�C�ɩ�StO)�����\��$ \�\�0Ѱ\n���g�kkjT]]Ky�\�\�\�U��̜>�~��5��\�M�\�	>1鑇\Z�\�M\���/\�?7�@��%\�\�\�&\�\�̓�\�\�\�\�ȸ1��\�!.r�?��z�]\�J�Ξ>}kڱ��N�j=�C;vɗΙC�\\��L�<����+$\��\� �\0���Х�\�9�n0@@-�L\�:&!;5�J�ҨUW6Z���|�\�h�q:Nӟ\�;w��?��4�\�C\�\�>���\08|�[zP��~��0ft¿Ǐ{\n���\�qzh+4&.�\�X!�@o%�s\�6*&\���\�S���8e����L�<Y��n�Vb�K/�pb�\�L�\�Y�4fL�#�\r�BQ�c|l\\JlLt	ѥ�Gz\��,�\�e��,�i\�q��g�\��}����\��񧟒�^��\��\�J\0\0ү�3\� pss�\n	\n\�?*.-6:��)=�|�s\�hjW�\�#Y�����\�h4*\�[|}\�m��ys\�\�_|�\��<p*\�4\� \���Y6� @\0������\�3!q\\S|��9w\�\�JL8\�`�t;\�4��ˀ2:!����f���\0\0\�\����44 @g\�\�\�_LL�^���ҷ�@\�)�~�sWO ���yD\�gp�n�����\���\�\���\�\�P;�C9\0�\�\�\�pHPp\�%3��^l�X5\�\0 ��J0$߲�!cV>�#��\�\�秐`\0��\�FyZDT���w@\��\��B�کR\����\�&�CBx{y\rH 5(0�\�\�h\� �Z\�\�>����@1�޾����vJ�������\�\�\�tHpо	\�(\0\�h7\�H\0��`=_6?e\�\�JA�b��}�\�vJ۴�L�2ła0\�\�m(\�B�\0?���M���.6a$\n$�a@D\�\�wGCc\�.B;\�tJ^QUIٰ�ܼb9��;h����\�\�\�U�~��\�$\�\��ZI\�~\0�D�l�\�͌\�*��,-?����F��\�\n\�^\�Ȉp�M�ȴ�S\r���SO\�9\����ƾ���ݡ\�V�%@#@�-تv\�FG�\�vǑ\�.�khx\"s����\"�\�Hn�i9Y�r�\�J\�!��B�3,>.��qc\�;mF4\�8$@�v��a&��(>*+�O�\�\�\�ե�i\�c�g�~��3��Y���<u\�f`g�\�P\�\�\�i)\"\�\�\�,�\n��0\�\�#Z1yV\�/i�\�oim}H�\���wݹ\n(R\ZM\�e-<==����\�\0\�J;\�:L�D����>!rֹs�K\�^\�R�g��yyy�H?v\��\���\"\�B\�I@�CY	��Slmk{X`V\��J](t҄�\�V\�~�3� i�Z	\r\n�6_I�DN\�\�җ�J\\BL�\��U*\0\�3\�\r\�J\0��\�\�V\"|�\�\�\�ڮ;\�\�\�9&!��6#�[�7X�KZ	\�\n�\�40�\�\�@�1�A� �aXY	%\�\�L\�U\" ��(��TKHI$�DI$�DI$�DI$�DI$�DI$�DI$�DI$�D�\�(�_�\0_?�3m\�\��\0\0\0\0IEND�B`�');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-17 15:14:23