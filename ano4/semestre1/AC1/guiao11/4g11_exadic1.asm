# typedef struct {		Alinhamento		SIZE		OFFSET
# char a1[10]			1			10		0
# double g			8			8		10->16
# int a2[2]			4			8		24
# char v			1			1		32
# float k			4			4		33->36
# } uvw				8			(36+4)40


# typedef struct		Alinhamento		SIZE		OFFSET
# char a1[14]			1			14		0
# int i				4			4		14->16
# double g			8			8		20->24
# char a2[17]			1			17		32
# } xyz				8			49->56