create table ods_dq.ref_slik_hub_pelapor
(
kode text,
short_description text,
kode_slik text,
description text,
source_system_code text,
insert_timestamp timestamp default now()
)

create table ods_hist_dq.ref_slik_hub_pelapor
(
kode text,
short_description text,
kode_slik text,
description text,
source_system_code text,
insert_timestamp timestamp default now()
)

insert into ods_dq.ref_slik_hub_pelapor
values
('0110','Pengendalian Bank &/ keluarga','0110','Pengendali dan atau keluarga pengendali Pelapor','BSS'),
('0120','Pihak Dimiliki Bank','0120','Perusahaan/badan dimana Pelapor bertindak sebagai pengendali (subsidiary)','BSS'),
('0130','Pihak Afiliasi','0130','Pengendali lain dari anak perusahaan/subsidiary Pelapor','BSS'),
('0140','PRSHN DMN PNGNDL SBGMANA 0110','0140','Perusahaan dimana pihak sebagaimana dimaksud pada angka 1 (sandi 0110) bertindak sebagai pengendali','BSS'),
('0150','PRSHN DMN PNGNDL SBGMANA 0130','0150','Perusahaan dimana pihak sebagaimana dimaksud pada angka 3 (sandi 0130) bertindak sebagai pengendali','BSS'),
('0190','Kepemilikan Lainnya','9900','Tidak terkait dengan pelapor','BSS'),
('0210','Pengurus Bank &/ Keluarga','0210','Pengurus Pelapor dan atau keluarga pengurus Pelapor','BSS'),
('0220','Pengurus Afiliasi','0220','Pengurus dari perusahaan-perusahaan sebagaimana dimaksud pada angka 1 s.d. 5 (sandi 0110, 0120, 0130,0140, dan 0150)','BSS'),
('0230','PRSHN yang Mengurus Peng. Bank','0230','Perusahaan yang pengurusnya merupakan pengurus Pelapor','BSS'),
('0240','Perusahaan Keluarga Pengendali','0240','Perusahaan yang pengurusnya merupakan pengurus dari perusahaan-perusahaan sebagaimana dimaksud pada angka 1 s.d. 5 (sandi 0110, 0120, 0130, 0140, dan 0150)','BSS'),
('0250','PRSHN yang Pengurusnya Sebagai Pengd','0250','Perusahaan dimana pengurus Pelapor bertindak sebagai pengendali','BSS'),
('0260','PRSHN yang Pengendaliannya 0110-0150','0260','Perusahaan dimana pengurus dari perusahaan_x0002_perusahaan sebagaimana dimaksud pada angka 1 s.d. 5 (sandi 0110, 0120, 0130, 0140, dan 0150) bertindak sebagai pengendali','BSS'),
('0290','Kepengurusan Lainyya','9900','Tidak terkait dengan pelapor','BSS'),
('0310','Keuangan - Transaksional','0310','Ketergantungan keuangan (financial interdependence)','BSS'),
('0320','Keuangan - Non Transaksional','0320','Kontrak Investasi Kolektif (KIK dimana pihak-pihak sebagaimana dimaksud pada angka 1 s.d 11 (sandi 0110,0120, 0130, 0140, 0150, 0210, 0220, 0230, 0240, 0250, dan 0260) memiliki 10% atau lebih saham pada manajer investasi kolektif tersebut','BSS'),
('0330','Keuangan - Penjaminan','0330','Penjaminan','BSS'),
('0390','Keuangan Lainnya','9900','Tidak terkait dengan pelapor','BSS'),
('0410','Pihak Penentu Dewan Direksi','9901','Tidak terkait dengan pelapor','BSS'),
('0420','Pihak Lainnya','9902','Tidak terkait dengan pelapor','BSS'),
('0490','Tidak Terkait Dengan LJK','9903','Tidak terkait dengan pelapor','BSS'),
('9900','','9900','Tidak terkait dengan pelapor','BSS')

insert into ods_hist_dq.ref_slik_hub_pelapor
values
('0110','Pengendalian Bank &/ keluarga','0110','Pengendali dan atau keluarga pengendali Pelapor','BSS'),
('0120','Pihak Dimiliki Bank','0120','Perusahaan/badan dimana Pelapor bertindak sebagai pengendali (subsidiary)','BSS'),
('0130','Pihak Afiliasi','0130','Pengendali lain dari anak perusahaan/subsidiary Pelapor','BSS'),
('0140','PRSHN DMN PNGNDL SBGMANA 0110','0140','Perusahaan dimana pihak sebagaimana dimaksud pada angka 1 (sandi 0110) bertindak sebagai pengendali','BSS'),
('0150','PRSHN DMN PNGNDL SBGMANA 0130','0150','Perusahaan dimana pihak sebagaimana dimaksud pada angka 3 (sandi 0130) bertindak sebagai pengendali','BSS'),
('0190','Kepemilikan Lainnya','9900','Tidak terkait dengan pelapor','BSS'),
('0210','Pengurus Bank &/ Keluarga','0210','Pengurus Pelapor dan atau keluarga pengurus Pelapor','BSS'),
('0220','Pengurus Afiliasi','0220','Pengurus dari perusahaan-perusahaan sebagaimana dimaksud pada angka 1 s.d. 5 (sandi 0110, 0120, 0130,0140, dan 0150)','BSS'),
('0230','PRSHN yang Mengurus Peng. Bank','0230','Perusahaan yang pengurusnya merupakan pengurus Pelapor','BSS'),
('0240','Perusahaan Keluarga Pengendali','0240','Perusahaan yang pengurusnya merupakan pengurus dari perusahaan-perusahaan sebagaimana dimaksud pada angka 1 s.d. 5 (sandi 0110, 0120, 0130, 0140, dan 0150)','BSS'),
('0250','PRSHN yang Pengurusnya Sebagai Pengd','0250','Perusahaan dimana pengurus Pelapor bertindak sebagai pengendali','BSS'),
('0260','PRSHN yang Pengendaliannya 0110-0150','0260','Perusahaan dimana pengurus dari perusahaan_x0002_perusahaan sebagaimana dimaksud pada angka 1 s.d. 5 (sandi 0110, 0120, 0130, 0140, dan 0150) bertindak sebagai pengendali','BSS'),
('0290','Kepengurusan Lainyya','9900','Tidak terkait dengan pelapor','BSS'),
('0310','Keuangan - Transaksional','0310','Ketergantungan keuangan (financial interdependence)','BSS'),
('0320','Keuangan - Non Transaksional','0320','Kontrak Investasi Kolektif (KIK dimana pihak-pihak sebagaimana dimaksud pada angka 1 s.d 11 (sandi 0110,0120, 0130, 0140, 0150, 0210, 0220, 0230, 0240, 0250, dan 0260) memiliki 10% atau lebih saham pada manajer investasi kolektif tersebut','BSS'),
('0330','Keuangan - Penjaminan','0330','Penjaminan','BSS'),
('0390','Keuangan Lainnya','9900','Tidak terkait dengan pelapor','BSS'),
('0410','Pihak Penentu Dewan Direksi','9901','Tidak terkait dengan pelapor','BSS'),
('0420','Pihak Lainnya','9902','Tidak terkait dengan pelapor','BSS'),
('0490','Tidak Terkait Dengan LJK','9903','Tidak terkait dengan pelapor','BSS'),
('9900','','9900','Tidak terkait dengan pelapor','BSS')