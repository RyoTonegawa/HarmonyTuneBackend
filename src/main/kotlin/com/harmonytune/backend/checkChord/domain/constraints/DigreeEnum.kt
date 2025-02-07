package com.harmonytune.backend.checkChord.domain.constraints

enum class DigreeEnum(
    val keyNumber:Int,
    val digree:Double
) {
    C(1,1.0),
    C_SHARP(2,1.5),
    D(3,2.0),
    D_SHARP(4,2.5),
    E(5,3.0),
    F(6,3.5),
    F_SHARP(7,4.0),
    G(8,4.5),
    G_SHARP(9,5.0),
    A(10,5.5),
    A_SHARP(11,6.0),
    B(12,6.5);
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

