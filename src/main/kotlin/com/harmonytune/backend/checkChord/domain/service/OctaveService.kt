package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class OctaveService {
  fun getOctave(noteNumber: Int): Int {
    return noteNumber / 12 - 1
  }
  // 各オクターブのAのピッチ
  fun getStandardPitch(noteNumber: Int): Double {
    val octave = getOctave(noteNumber)
    return 440.0 * Math.pow(2.0, (octave - 4.0))
  }
  // 各オクターブのCの純正律のピッチ
  // A4が440の時C4は264.0になるように、Aのピッチから0.6倍する
  fun getJustIntonationCPitch(noteNumber: Int): Double {
    val cPitch = getStandardPitch(noteNumber) * (3.0 / 5.0)
    return cPitch
  }
  
}
