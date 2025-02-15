package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class FrequencyService(
) {
  private val justIntonationCentsAdjustment = mapOf(
    "root" to 0.0,       // 完全1度 (Root)
    "minor_second" to 11.73,       // 短2度
    "major_second" to 3.91,        // 長2度
    "minor_third" to 15.64,        // 短3度
    "major_third" to -13.69,       // 長3度
    "perfect_fourth" to -1.96,     // 完全4度
    "augmented_fourth" to -9.78,   // 増4度 (トライトーン)
    "diminished_fifth" to -9.78,   // 減5度 (増4度と同じ)
    "perfect_fifth" to 1.96,       // 完全5度
    "minor_sixth" to 13.69,        // 短6度
    "major_sixth" to -15.64,       // 長6度
    "minor_seventh" to -3.91,      // 短7度
    "major_seventh" to -11.73      // 長7度
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
