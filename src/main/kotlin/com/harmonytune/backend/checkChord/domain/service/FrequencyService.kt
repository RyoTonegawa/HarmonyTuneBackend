package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class FrequencyService(
) {
  private val justIntonationCentsAdjustment = mapOf(
    // 1度 (Unison)
    "ルート" to 0.0,       // 完全1度 (Root)

    // 2度 (Second)
    "短2度" to 11.73,       // 短2度 (♭2)
    "長2度" to 3.91,        // 長2度 (2)

    // 3度 (Third)
    "短3度" to 15.64,        // 短3度 (♭3)
    "長3度" to -13.69,       // 長3度 (3)

    // 4度 (Fourth)
    "完全4度" to -1.96,     // 完全4度 (4)
    "増4度" to -9.78,       // 増4度 (♯4, トライトーン)
    "減5度" to -9.78,       // 減5度 (♭5, トライトーン)

    // 5度 (Fifth)
    "完全5度" to 1.96,       // 完全5度 (5)
    "増5度" to 5.87,         // 増5度 (♯5, +5)

    // 6度 (Sixth)
    "短6度" to 13.69,        // 短6度 (♭6)
    "長6度" to -15.64,       // 長6度 (6)

    // 7度 (Seventh)
    "短7度" to -3.91,        // 短7度 (♭7)
    "長7度" to -11.73,       // 長7度 (7)

    // 9度 (Ninth)
    "短9度" to 11.73,        // 短9度 (♭9) → 短2度と同じ
    "長9度" to 3.91,         // 長9度 (9) → 長2度と同じ

    // 11度 (Eleventh)
    "完全11度" to -1.96,     // 完全11度 (11) → 完全4度と同じ
    "増11度" to -9.78,       // 増11度 (♯11) → 増4度と同じ

    // 13度 (Thirteenth)
    "短13度" to 13.69,       // 短13度 (♭13) → 短6度と同じ
    "長13度" to -15.64       // 長13度 (13) → 長6度と同じ
)

  // 任意のオクターブの音の平均律の周波数を計算
  // fun calculateEqualTemperamentFrequency(
  //   noteNumber: Int,
  // ): Double {
  //   val equalTemperamentFrequency = 440.0 * Math.pow(2.0, (noteNumber - 69.0) / 12.0)
  //   return equalTemperamentFrequency
  // }
  // 純正律の周波数を計算
  // 純正律の周波数は、ルートの周波数に各度数の比率をかけることで計算できる
  // fun calculateJustIntonationFrequency(
  //   degree: Double,
  //   rootNoteJustIntonationFrequency: Double,
  // ): Double {
  //   val ratio = justIntonationRatios[degree] ?: throw IllegalArgumentException("Invalid degree: $degree")
  //   return rootNoteJustIntonationFrequency * ratio
  // }

  // セント差を計算
  fun calculateCentsDifference(degree: String): Double {
    return justIntonationCentsAdjustment[degree] ?: throw IllegalArgumentException("Invalid degree: $degree")
  }
  
}
