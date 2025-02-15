package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class FrequencyService(
) {
  private val justIntonationCentsAdjustment = mapOf(
    // 1度 (Unison)
    "root" to 0.0,       // 完全1度 (Root)

    // 2度 (Second)
    "minor_second" to 11.73,       // 短2度 (b2)
    "major_second" to 3.91,        // 長2度 (2)

    // 3度 (Third)
    "minor_third" to 15.64,        // 短3度 (b3)
    "major_third" to -13.69,       // 長3度 (3)

    // 4度 (Fourth)
    "perfect_fourth" to -1.96,     // 完全4度 (4)
    "augmented_fourth" to -9.78,   // 増4度 (#4, Tritone)
    "diminished_fifth" to -9.78,   // 減5度 (b5, Tritone)

    // 5度 (Fifth)
    "perfect_fifth" to 1.96,       // 完全5度 (5)
    "augmented_fifth" to 5.87,     // 増5度 (#5, +5)

    // 6度 (Sixth)
    "minor_sixth" to 13.69,        // 短6度 (b6)
    "major_sixth" to -15.64,       // 長6度 (6)

    // 7度 (Seventh)
    "minor_seventh" to -3.91,      // 短7度 (b7)
    "major_seventh" to -11.73,     // 長7度 (7)

    // 9度 (Ninth)
    "minor_ninth" to 11.73,        // 短9度 (b9) → 短2度と同じ
    "major_ninth" to 3.91,         // 長9度 (9) → 長2度と同じ

    // 11度 (Eleventh)
    "perfect_eleventh" to -1.96,   // 完全11度 (11) → 完全4度と同じ
    "augmented_eleventh" to -9.78, // 増11度 (#11) → 増4度と同じ

    // 13度 (Thirteenth)
    "minor_thirteenth" to 13.69,   // 短13度 (b13) → 短6度と同じ
    "major_thirteenth" to -15.64   // 長13度 (13) → 長6度と同じ
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
