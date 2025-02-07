package com.harmonytune.backend.checkChord.domain.constraints

enum class DigreeEnum(
    val keyNumber:Int,
    val digree:Double
) {
    C(0,1.0),
    C_SHARP(1,1.5),
    D(2,2.0),
    D_SHARP(3,2.5),
    E(4,3.0),
    F(5,4.0),
    F_SHARP(6,4.5),
    G(7,5.0),
    G_SHARP(8,5.5),
    A(9,6.0),
    A_SHARP(10,6.5),
    B(11,7.0);
    companion object{
        fun fromKeyNumber(
            keyNumber:Int
        ):Double{
            return values().find{
                it.keyNumber == keyNumber
            }?.digree ?: throw IllegalArgumentException("Invalid key number: $keyNumber")
        }
    }
}

