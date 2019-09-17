function zamanFarki(zaman){
	zaman = zaman.replace(/-/ig,"/");
	zaman = new Date(zaman) * 1;
	simdi = new Date() * 1;
	bir_saniye = 1000;
	bir_dakika = 60 * bir_saniye;
	bir_saat = 60 * bir_dakika;
	bir_gun = 24 * bir_saat;
	bir_hafta = 7 * bir_gun;
	fark = zaman > simdi ? zaman - simdi : simdi - zaman;
	gun_farki = Math.floor(fark / bir_gun);
	saat_farki = Math.floor((fark % bir_gun) / bir_saat);
	dakika_farki = Math.floor((fark % bir_saat) / bir_dakika);
	saniye_farki = Math.floor((fark % bir_dakika) / bir_saniye);
	return {
		gun: gun_farki,
		saat: ("0" + saat_farki).slice(-2, 3),
		dakika: ("0" + dakika_farki).slice(-2, 3),
		saniye: ("0" + saniye_farki).slice(-2, 3)
	};
};