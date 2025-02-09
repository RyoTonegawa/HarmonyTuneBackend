package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service
import com.harmonytune.backend.checkChord.domain.service.OctaveService
import com.harmonytune.backend.checkChord.domain.service.IntervalService

@Service
class FrequencyService(
  private val octaveService: OctaveService,
  private val intervalService: IntervalService
) {
  private val justIntonationRatios = mapOf(
    1.0 to 1.0,       // 完全1度 (Root)
    1.5 to 16.0 / 15.0, // 短2度
    2.0 to 9.0 / 8.0,   // 長2度
    2.5 to 6.0 / 5.0,   // 短3度
    3.0 to 5.0 / 4.0,   // 長3度
    4.0 to 4.0 / 3.0,   // 完全4度
    4.5 to 45.0 / 32.0, // 増4度 (トライトーン)
    5.0 to 3.0 / 2.0,   // 完全5度s
    5.5 to 8.0 / 5.0,   // 短6度
    6.0 to 5.0 / 3.0,   // 長6度
    6.5 to 9.0 / 5.0,  // 短7度
    7.0 to 15.0 / 8.0, // 長7度
  )

  // 平均律の周波数を計算
  fun calculateEqualTemperamentFrequency(
    noteNumber: Int,
  ): Double {
    val standardPitch = this.octaveService.getStandardPitch(noteNumber)
    val semitoneIntervalFromA = intervalService.getIntervalFromEachOctaveA(noteNumber)
    val equalTemperamentFrequency = standardPitch * Math.pow(2.0, ((semitoneIntervalFromA) / 12.0))
    return equalTemperamentFrequency
  }
  // 純正律の周波数を計算
  // オクターブごとにルートの周波数を計算し
  // ルートの周波数に各度数の比率をかけることで計算できる
  fun calculateJustIntonationFrequency(
    degree: Double,
    noteNumber: Int,
  ): Double {
    val ratio = justIntonationRatios[degree] ?: throw IllegalArgumentException("Invalid degree: $degree")
    return octaveService.getJustIntonationCPitch(noteNumber) * ratio
  }

  // セント差を計算
  fun calculateCentsDifference(justFreq: Double, equalFreq: Double): Double {
    return 1200 * (Math.log(justFreq / equalFreq) / Math.log(2.0))
  }
  
}
