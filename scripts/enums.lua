local Enums = {}

Enums.Characters = {
	KIMEL = Isaac.GetPlayerTypeByName("Kimel", false),
	PATRYK = Isaac.GetPlayerTypeByName("Patryk", false),
	DAWID = Isaac.GetPlayerTypeByName("Dawid", false),
	AGU = Isaac.GetPlayerTypeByName("Agu", false),
	KAMIL = Isaac.GetPlayerTypeByName("Kamil", false),
	FRANEK = Isaac.GetPlayerTypeByName("Franek", false),
	MICHAL = Isaac.GetPlayerTypeByName("Michal", false),
	TYMEK = Isaac.GetPlayerTypeByName("Tymek", false),
	MAJKEL = Isaac.GetPlayerTypeByName("Majkel", false),
	WOJTEK = Isaac.GetPlayerTypeByName("Wojtek", false),
	HIKKOF = Isaac.GetPlayerTypeByName("Hikkof", false)
}

Enums.Items = {
	MATRIX_MANDELBROT = Isaac.GetItemIdByName("matrix_mandelbrot")
}

Enums.Sounds = {
	HIKKOF_HURT = Isaac.GetSoundIdByName("HikkofHurt")
}

--it is made to easier identify wheather ludovico
--is regular tear or brimstone or etc. within code
Enums.LudoVariant = {
	NULL = 0,
	TEAR = 1,
	KNIFE = 2,
	BRIMSTONE_RING = 3,
	TECHX_RING = 4
}

return Enums