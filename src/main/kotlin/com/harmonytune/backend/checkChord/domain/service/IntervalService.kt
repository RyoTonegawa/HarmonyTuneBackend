package com.harmonytune.backend.checkChord.domain.service

import org.springframework.stereotype.Service

@Service
class IntervalService {
  val DEGREES = mapOf(
    0 to "R", 1 to "m2", 2 to "M2", 3 to "m3", 4 to "M3",
    5 to "P4", 6 to "TT", 7 to "P5", 8 to "m6", 9 to "M6",
    10 to "m7", 11 to "M7"
  ) 
  fun getDegree(semitoneInterval: Int): String {
    return DEGREES[semitoneInterval] ?: "Unknown"
  }
  fun getInterval(rootNoteNumber: Int, targetNoteNumber: Int): Int {
    System.out.println("rootNoteNumber: $rootNoteNumber, targetNoteNumber: $targetNoteNumber")
    val interval = (targetNoteNumber - rootNoteNumber) % 12 // 半音の差分（mod 12）
    return interval
  }
  //基準となる各Aからの半音のインターバルを求める;
  fun getIntervalFromEachOctaveA(noteNumber: Int): Int {
    val baseNoteA = (noteNumber / 12) * 12 + 9 // 各オクターブのAのMIDIノート番号を取得
    return noteNumber - baseNoteA // A基準の相対的な半音数を計算
}

}