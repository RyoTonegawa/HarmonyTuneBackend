package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.service.OctaveService
import com.harmonytune.backend.checkChord.domain.service.IntervalService

@Service
class FrequencyService(
  private val octaveService: OctaveService,
  private val intervalService: IntervalService
) {
  private val justIntonationCentsAdjustment = mapOf(
    1.0 to 0.0,       // 完全1度 (Root)
    1.5 to 11.73, // 短2度
    2.0 to 3.91,   // 長2度
    2.5 to 15.64,   // 短3度
    3.0 to -13.69,   // 長3度
    4.0 to -1.96,   // 完全4度
    4.5 to -9.78, // 増4度 (トライトーン)
    5.0 to +1.96,   // 完全5度s
    5.5 to +13.69,   // 短6度
    6.0 to -15.64,   // 長6度
    6.5 to -3.91,  // 短7度
    7.0 to -11.73, // 長7度
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
  fun calculateCentsDifference(degree: Double): Double {
    return justIntonationCentsAdjustment[degree] ?: throw IllegalArgumentException("Invalid degree: $degree")
  }
  
}
